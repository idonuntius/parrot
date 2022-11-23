import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/feature/input/input_state.dart';
import 'package:parrot/usecase/get_setting_info_usecase.dart';
import 'package:parrot/usecase/save_slack_webhook_url_usecase.dart';

final inputControllerProvider = StateNotifierProvider.autoDispose<InputController, InputState>(
  (ref) => InputController(
    ref.read(getSettingInfoUseCaseProvider),
    ref.read(saveSlackWebhookUrlUseCaseProvider),
  ),
);

class InputController extends StateNotifier<InputState> {
  InputController(
    this._getSettingInfoUseCase,
    this._saveSlackWebhookUrlUseCase,
  ) : super(InputState()) {
    _load();
  }

  final GetSettingInfoUseCase _getSettingInfoUseCase;
  final SaveSlackWebhookUrlUseCase _saveSlackWebhookUrlUseCase;

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
      await _saveSlackWebhookUrlUseCase(state.url);
      state = state.copyWith(savingUrlState: const State.successful(null));
    } on Exception catch (e) {
      state = state.copyWith(savingUrlState: State.failed(e));
    }
  }

  Future<void> retry() => _load();

  Future<void> _load() async {
    try {
      state = state.copyWith(gettingSettingInfoState: const State.inProgress());
      final info = await _getSettingInfoUseCase();
      state = state.copyWith(
        url: info.slackWebhookUrl != null ? info.slackWebhookUrl!.value : '',
        gettingSettingInfoState: State.successful(info),
      );
    } on Exception catch (e) {
      state = state.copyWith(gettingSettingInfoState: State.failed(e));
    }
  }
}
