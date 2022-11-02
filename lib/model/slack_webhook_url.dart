import 'package:freezed_annotation/freezed_annotation.dart';

part 'slack_webhook_url.freezed.dart';

@freezed
class SlackWebhookUrl with _$SlackWebhookUrl {
  const factory SlackWebhookUrl({
    required String value,
  }) = _SlackWebhookUrl;

  const SlackWebhookUrl._();
}
