import 'package:parrot/common/store_stream_controller.dart';
import 'package:parrot/model/slack_webhook_url_paths.dart';
import 'package:parrot/model/tab_url.dart';

abstract class ChromeApi with StoreStreamController {
  Future<TabUrl> getCurrentUrl();
  Future<SlackWebhookUrlPaths?> getSlackWebhookUrlPaths();
  Future<void> setSlackWebhookUrlPaths(String path1, String path2, String path3);
  Future<void> removeSlackWebhookUrlPaths();
}
