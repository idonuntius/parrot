@JS()
library chrome_api;

import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/model/tab_url.dart';

@JS('getCurrentUrl')
external Object _getCurrentUrl();

@JS('getSlackWebhookUrl')
external Object _getSlackWebhookUrl();

@JS('setSlackWebhookUrl')
external Object _setSlackWebhookUrl(String url);

@JS('removeSlackWebhookUrl')
external Object _removeSlackWebhookUrl();

class ChromeApiImpl implements ChromeApi {
  @override
  Future<TabUrl> getCurrentUrl() async {
    final url = await promiseToFuture<String>(_getCurrentUrl());
    return TabUrl(value: url);
  }

  @override
  Future<SlackWebhookUrl?> getSlackWebhookUrl() async {
    final url = await promiseToFuture<String?>(_getSlackWebhookUrl());
    return url != null ? SlackWebhookUrl(value: url) : null;
  }

  @override
  Future<void> setSlackWebhookUrl(String url) {
    return promiseToFuture(_setSlackWebhookUrl(url));
  }

  @override
  Future<void> removeSlackWebhookUrl() {
    return promiseToFuture(_removeSlackWebhookUrl());
  }
}
