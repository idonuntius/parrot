import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/feature/home/home_getting_state.dart';
import 'package:parrot/feature/home/home_state.dart';

final homeControllerProvider = StateNotifierProvider.autoDispose<HomeController, HomeState>(
  (ref) => HomeController(ref.read(chromeApiProvider)),
);

class HomeController extends StateNotifier<HomeState> {
  HomeController(this._chromeApi) : super(const HomeState()) {
    _load();
  }

  final ChromeApi _chromeApi;

  Future<void> sendToUrl() async {}

  Future<void> retry() => _load();

  Future<void> _load() async {
    try {
      state = state.copyWith(gettingState: const HomeGettingState.inProgress());
      final slackWebhookUrl = await _chromeApi.getSlackWebhookUrl();
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
