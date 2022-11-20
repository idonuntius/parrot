import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/provider.dart';
import 'package:parrot/common/encrption_key_constant.dart';
import 'package:parrot/common/encrption_util.dart';
import 'package:parrot/model/setting_info.dart';
import 'package:parrot/model/slack_webhook_url.dart';

final getSettingInfoUseCaseProvider = Provider<GetSettingInfoUseCase>(
  (ref) => _GetSettingInfoUseCaseImpl(
    ref.read(chromeApiProvider),
  ),
);

abstract class GetSettingInfoUseCase {
  Future<SettingInfo> call();
}

class _GetSettingInfoUseCaseImpl implements GetSettingInfoUseCase {
  const _GetSettingInfoUseCaseImpl(this._chromeApi);

  final ChromeApi _chromeApi;

  @override
  Future<SettingInfo> call() async {
    final isRich = await _chromeApi.getIsRich();
    final paths = await _chromeApi.getSlackWebhookUrlPaths();
    if (paths != null) {
      final path1 = EncrptionUtil.decode(paths.path1, EncrptionKeyConstant.key1);
      final path2 = EncrptionUtil.decode(paths.path2, EncrptionKeyConstant.key2);
      final path3 = EncrptionUtil.decode(paths.path3, EncrptionKeyConstant.key3);
      return SettingInfo(
        isRich: isRich,
        slackWebhookUrl: SlackWebhookUrl(value: 'https://hooks.slack.com/services/$path1/$path2/$path3'),
      );
    } else {
      return SettingInfo(isRich: isRich);
    }
  }
}
