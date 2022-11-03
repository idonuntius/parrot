import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/feature/input/input_state.dart';

final inputControllerProvider = StateNotifierProvider.autoDispose<InputController, InputState>(
  (ref) => InputController(ref.read(chromeApiProvider)),
);

class InputController extends StateNotifier<InputState> {
  InputController(this._chromeApi) : super(const InputState()) {
    _load();
  }

  final ChromeApi _chromeApi;

  void onUrlChanged(String value) {
    state = state.copyWith(url: value);
  }

  void resetSavingState() {
    state = state.copyWith(savingUrlState: const State.init());
  }

  String? validate() {
    if (state.url.isEmpty) {
      return 'Please enter slack webhook url';
    } else if (!state.url.startsWith('https://hooks.slack.com/services/')) {
      return 'Please enter URL starting with https://hooks.slack.com/services/';
    } else {
      return null;
    }
  }

  Future<void> onSavingButtonTapped() async {
    try {
      state = state.copyWith(savingUrlState: const State.inProgress());
      await _chromeApi.setSlackWebhookUrl(state.url);
      state = state.copyWith(savingUrlState: const State.successful(null));
    } on Exception catch (e) {
      state = state.copyWith(savingUrlState: State.failed(e));
    }
  }

  Future<void> retry() => _load();

  Future<void> _load() async {
    try {
      state = state.copyWith(gettingUrlState: const State.inProgress());
      final url = await _chromeApi.getSlackWebhookUrl();
      state = state.copyWith(
        url: url != null ? url.value : '',
        gettingUrlState: State.successful(url),
      );
    } on Exception catch (e) {
      state = state.copyWith(gettingUrlState: State.failed(e));
    }
  }
}
