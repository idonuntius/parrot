import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/model/setting_info.dart';
import 'package:parrot/model/slack_webhook_url.dart';

part 'input_state.freezed.dart';

@freezed
class InputState with _$InputState {
  factory InputState({
    @Default(State<SlackWebhookUrl?>.init()) State<SettingInfo> gettingSettingInfoState,
    @Default(State<void>.init()) State<void> savingUrlState,
    @Default(State<void>.init()) State<void> savingIsRichState,
    @Default('') String url,
  }) = _InputState;

  const InputState._();
}
