import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/model/slack_webhook_url.dart';

final detailControllerProvider = StateNotifierProvider.autoDispose<DetailController, State<SlackWebhookUrl?>>(
  (ref) => DetailController(
    ref.read(chromeApiProvider),
  ),
);

class DetailController extends StateNotifier<State<SlackWebhookUrl?>> {
  DetailController(this._chromeApi) : super(const State.init()) {
    _load();
  }

  final ChromeApi _chromeApi;

  Future<void> deleteSlackWebhookUrl() async {
    try {
      state = const State.inProgress();
      await _chromeApi.removeSlackWebhookUrl();
      final url = await _chromeApi.getSlackWebhookUrl();
      state = State.successful(url);
    } on Exception catch (e) {
      state = State.failed(e);
    }
  }

  Future<void> retry() => _load();

  Future<void> _load() async {
    try {
      state = const State.inProgress();
      final url = await _chromeApi.getSlackWebhookUrl();
      state = State.successful(url);
    } on Exception catch (e) {
      state = State.failed(e);
    }
  }
}
