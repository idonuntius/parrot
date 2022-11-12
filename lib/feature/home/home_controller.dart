import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/api/slack/slack_api.dart';
import 'package:parrot/common/store_stream_controller.dart';
import 'package:parrot/feature/home/home_getting_state.dart';
import 'package:parrot/feature/home/home_state.dart';
import 'package:parrot/usecase/get_slack_webhook_url_usecase.dart';
import 'package:parrot/usecase/save_slack_webhook_url_usecase.dart';

final homeControllerProvider = StateNotifierProvider.autoDispose<HomeController, HomeState>(
  (ref) => HomeController(
    ref.read(getSlackWebhookUrlUseCaseProvider),
    ref.read(saveSlackWebhookUrlUseCaseProvider),
    ref.read(chromeApiProvider),
    ref.read(slackApiProvider),
  ),
);

class HomeController extends StateNotifier<HomeState> {
  HomeController(
    this._getSlackWebhookUrlUseCase,
    this._saveSlackWebhookUrlUseCase,
    this._chromeApi,
    this._slackApi,
  ) : super(const HomeState()) {
    _saveSlackWebhookUrlUseCase.addStreamController(_streamController);
    _streamController.stream.listen((_) => _load());
    _load();
  }

  final GetSlackWebhookUrlUseCase _getSlackWebhookUrlUseCase;
  final SaveSlackWebhookUrlUseCase _saveSlackWebhookUrlUseCase;
  final ChromeApi _chromeApi;
  final SlackApi _slackApi;
  final _streamController = StreamController<StreamType>();

  @override
  void dispose() {
    _saveSlackWebhookUrlUseCase.removeStreamController(_streamController);
    _streamController.close();
    super.dispose();
  }

  Future<void> sendToUrl() async {
    final slackWebhookUrl = state.gettingState.slackWebhookUrl;
    final tabUrl = state.gettingState.tabUrl;
    if (slackWebhookUrl != null && tabUrl != null) {
      await _slackApi.send(
        slackWebhookUrl,
        {
          'text': tabUrl.value,
        },
      );
    }
  }

  Future<void> retry() => _load();

  Future<void> _load() async {
    try {
      state = state.copyWith(gettingState: const HomeGettingState.inProgress());
      final slackWebhookUrl = await _getSlackWebhookUrlUseCase();
      if (slackWebhookUrl != null) {
        final tabUrl = await _chromeApi.getCurrentUrl();
        state = state.copyWith(gettingState: HomeGettingState.successful(slackWebhookUrl, tabUrl));
      } else {
        state = state.copyWith(gettingState: const HomeGettingState.slackWebhookUrlNotSaved());
      }
    } on Exception catch (e) {
      state = state.copyWith(gettingState: HomeGettingState.failed(e));
    }
  }
}
