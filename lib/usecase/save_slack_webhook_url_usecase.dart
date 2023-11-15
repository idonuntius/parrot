import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/api/slack/slack_api.dart';
import 'package:parrot/common/encrption_key_constant.dart';
import 'package:parrot/common/encrption_util.dart';
import 'package:parrot/common/store_stream_controller.dart';
import 'package:parrot/model/slack_webhook_url.dart';

final saveSlackWebhookUrlUseCaseProvider = Provider<SaveSlackWebhookUrlUseCase>(
  (ref) => _SaveSlackWebhookUrlUseCaseImpl(
    ref.read(chromeApiProvider),
    ref.read(slackApiProvider),
  ),
);

abstract class SaveSlackWebhookUrlUseCase with StoreStreamController {
  Future<void> call(String url);
}

class _SaveSlackWebhookUrlUseCaseImpl extends SaveSlackWebhookUrlUseCase {
  _SaveSlackWebhookUrlUseCaseImpl(this._chromeApi, this._slackApi);

  final ChromeApi _chromeApi;
  final SlackApi _slackApi;

  @override
  Future<void> call(String url) async {
    final data = {'text': 'Sent from Chrome extension SendToSlack.'};
    await _slackApi.send(SlackWebhookUrl(value: url), data);

    final uri = Uri.parse(url);
    final paths = uri.pathSegments;
    if (paths.length == 4) {
      await _chromeApi.setSlackWebhookUrlPaths(
        EncrptionUtil.encode(paths[1], EncrptionKeyConstant.key1),
        EncrptionUtil.encode(paths[2], EncrptionKeyConstant.key2),
        EncrptionUtil.encode(paths[3], EncrptionKeyConstant.key3),
      );
    }
    return sink(StreamType.update);
  }
}
