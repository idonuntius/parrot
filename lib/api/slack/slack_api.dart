import 'package:parrot/model/slack_webhook_url.dart';

abstract class SlackApi {
  Future<void> send(SlackWebhookUrl url, Map<String, String> data);
}
