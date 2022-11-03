import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/model/tab_url.dart';

class ChromeApiImpl implements ChromeApi {
  @override
  Future<TabUrl> getCurrentUrl() async {
    return const TabUrl(value: 'url');
  }

  @override
  Future<SlackWebhookUrl?> getSlackWebhookUrl() async {
    return const SlackWebhookUrl(value: 'url');
  }

  @override
  Future<void> setSlackWebhookUrl(String url) {
    return Future.value();
  }

  @override
  Future<void> removeSlackWebhookUrl() {
    return Future.value();
  }
}
