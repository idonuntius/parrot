import 'package:parrot/common/store_stream_controller.dart';
import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/model/tab_url.dart';

abstract class ChromeApi with StoreStreamController {
  Future<TabUrl> getCurrentUrl();
  Future<SlackWebhookUrl?> getSlackWebhookUrl();
  Future<void> setSlackWebhookUrl(String url);
  Future<void> removeSlackWebhookUrl();
}
