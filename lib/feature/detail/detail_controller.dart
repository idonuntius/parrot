import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/common/store_stream_controller.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/usecase/get_setting_info_usecase.dart';
import 'package:parrot/usecase/save_slack_webhook_url_usecase.dart';

final detailControllerProvider = StateNotifierProvider.autoDispose<DetailController, State<SlackWebhookUrl?>>(
  (ref) => DetailController(
    ref.read(getSettingInfoUseCaseProvider),
    ref.read(saveSlackWebhookUrlUseCaseProvider),
    ref.read(chromeApiProvider),
  ),
);

class DetailController extends StateNotifier<State<SlackWebhookUrl?>> {
  DetailController(
    this._getSettingInfoUseCase,
    this._saveSlackWebhookUrlUseCase,
    this._chromeApi,
  ) : super(const State.init()) {
    _saveSlackWebhookUrlUseCase.addStreamController(_streamController);
    _chromeApi.addStreamController(_streamController);
    _streamController.stream.listen((_) => _load());
    _load();
  }

  final GetSettingInfoUseCase _getSettingInfoUseCase;
  final SaveSlackWebhookUrlUseCase _saveSlackWebhookUrlUseCase;
  final ChromeApi _chromeApi;
  final _streamController = StreamController<StreamType>.broadcast();

  @override
  void dispose() {
    _saveSlackWebhookUrlUseCase.removeStreamController(_streamController);
    _chromeApi.removeStreamController(_streamController);
    _streamController.close();
    super.dispose();
  }

  Future<void> deleteSlackWebhookUrl() async {
    try {
      state = const State.inProgress();
      await _chromeApi.removeSlackWebhookUrlPaths();
      final info = await _getSettingInfoUseCase();
      state = State.successful(info.slackWebhookUrl);
    } on Exception catch (e) {
      state = State.failed(e);
    }
  }

  Future<void> retry() => _load();

  Future<void> _load() async {
    try {
      state = const State.inProgress();
      final info = await _getSettingInfoUseCase();
      state = State.successful(info.slackWebhookUrl);
    } on Exception catch (e) {
      state = State.failed(e);
    }
  }
}
