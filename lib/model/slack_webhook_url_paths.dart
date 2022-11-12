import 'package:freezed_annotation/freezed_annotation.dart';

part 'slack_webhook_url_paths.freezed.dart';

@freezed
class SlackWebhookUrlPaths with _$SlackWebhookUrlPaths {
  const factory SlackWebhookUrlPaths({
    required String path1,
    required String path2,
    required String path3,
  }) = _SlackWebhookUrlPaths;

  const SlackWebhookUrlPaths._();
}
