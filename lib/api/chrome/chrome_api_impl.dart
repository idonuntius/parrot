@JS()
library chrome_api;

import 'package:js/js.dart';
import 'package:js/js_util.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/common/store_stream_controller.dart';
import 'package:parrot/model/slack_webhook_url_paths.dart';
import 'package:parrot/model/tab_url.dart';

@JS('getCurrentUrl')
external Object _getCurrentUrl();

@JS('getSlackWebhookUrlPaths')
external Object _getSlackWebhookUrlPaths();

@JS('setSlackWebhookUrlPaths')
external Object _setSlackWebhookUrlPaths(String path1, String path2, String path3);

@JS('removeSlackWebhookUrlPaths')
external Object _removeSlackWebhookUrlPaths();

@JS('getIsRich')
external Object _getIsRich();

@JS('setIsRich')
external Object _setIsRich(bool isRich);

@JS('removeIsRich')
external Object _removeIsRich();

class ChromeApiImpl extends ChromeApi {
  @override
  Future<TabUrl> getCurrentUrl() async {
    final url = await promiseToFuture<String>(_getCurrentUrl());
    return TabUrl(value: url);
  }

  @override
  Future<SlackWebhookUrlPaths?> getSlackWebhookUrlPaths() async {
    final paths = await promiseToFuture<List<String>?>(_getSlackWebhookUrlPaths());
    if (paths != null && paths.length == 3) {
      return SlackWebhookUrlPaths(
        path1: paths[0],
        path2: paths[1],
        path3: paths[2],
      );
    } else {
      return null;
    }
  }

  @override
  Future<void> setSlackWebhookUrlPaths(String path1, String path2, String path3) async {
    return promiseToFuture<void>(_setSlackWebhookUrlPaths(path1, path2, path3));
  }

  @override
  Future<void> removeSlackWebhookUrlPaths() async {
    await promiseToFuture<void>(_removeSlackWebhookUrlPaths());
    return sink(StreamType.update);
  }

  @override
  Future<bool> getIsRich() async {
    final isRich = await promiseToFuture<bool?>(_getIsRich());
    return isRich ?? false;
  }

  @override
  Future<void> setIsRich(bool value) {
    return promiseToFuture<void>(_setIsRich(value));
  }

  @override
  Future<void> removeIsRich() {
    return promiseToFuture<void>(_removeIsRich());
  }
}
