import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/model/tab_url.dart';

part 'home_getting_state.freezed.dart';

@freezed
class HomeGettingState with _$HomeGettingState {
  const HomeGettingState._();

  const factory HomeGettingState.init() = _Init;
  const factory HomeGettingState.inProgress() = _InProgress;
  const factory HomeGettingState.successful(
    SlackWebhookUrl slackWebhookUrl,
    TabUrl tabUrl,
  ) = _Successful;
  const factory HomeGettingState.slackWebhookUrlNotSaved() = _SlackWebhookUrlNotSaved;
  const factory HomeGettingState.failed(Exception exception) = _Failed;
}
