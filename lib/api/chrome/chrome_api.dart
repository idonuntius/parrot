import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/model/tab_url.dart';

abstract class ChromeApi {
  Future<TabUrl> getCurrentUrl();
  Future<SlackWebhookUrl?> getSlackWebhookUrl();
  Future<void> setSlackWebhookUrl(String url);
  Future<void> removeSlackWebhookUrl();
}
