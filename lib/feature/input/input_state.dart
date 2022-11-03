import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/feature/component/state.dart';
import 'package:parrot/model/slack_webhook_url.dart';

part 'input_state.freezed.dart';

@freezed
class InputState with _$InputState {
  const factory InputState({
    @Default(State<SlackWebhookUrl?>.init()) State<SlackWebhookUrl?> gettingUrlState,
    @Default(State<void>.init()) State<void> savingUrlState,
    @Default('') String url,
  }) = _InputState;

  const InputState._();
}
