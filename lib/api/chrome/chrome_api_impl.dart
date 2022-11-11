@JS()
library chrome_api;

import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/common/store_stream_controller.dart';
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

class ChromeApiImpl extends ChromeApi {
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
  Future<void> setSlackWebhookUrl(String url) async {
    await promiseToFuture<void>(_setSlackWebhookUrl(url));
    return sink(StreamType.update);
  }

  @override
  Future<void> removeSlackWebhookUrl() async {
    await promiseToFuture<void>(_removeSlackWebhookUrl());
    return sink(StreamType.update);
  }
}
