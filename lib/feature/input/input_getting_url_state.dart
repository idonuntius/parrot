import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/model/slack_webhook_url.dart';

part 'input_getting_url_state.freezed.dart';

@freezed
class InputGettingUrlState with _$InputGettingUrlState {
  const factory InputGettingUrlState.init() = _Init;
  const factory InputGettingUrlState.inProgress() = _InProgress;
  const factory InputGettingUrlState.successful(SlackWebhookUrl? url) = _Successful;
  const factory InputGettingUrlState.failed(Exception e) = _Failed;

  const InputGettingUrlState._();
}
