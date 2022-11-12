import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/model/slack_webhook_url_paths.dart';
import 'package:parrot/model/tab_url.dart';

class ChromeApiImpl extends ChromeApi {
  @override
  Future<TabUrl> getCurrentUrl() async {
    return const TabUrl(value: 'url');
  }

  @override
  Future<SlackWebhookUrlPaths?> getSlackWebhookUrlPaths() async {
    return const SlackWebhookUrlPaths(
      path1: 'path1',
      path2: 'path2',
      path3: 'path3',
    );
  }

  @override
  Future<void> setSlackWebhookUrlPaths(String path1, String path2, String path3) {
    return Future.value();
  }

  @override
  Future<void> removeSlackWebhookUrlPaths() {
    return Future.value();
  }
}
