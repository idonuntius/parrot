import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parrot/model/slack_webhook_url.dart';

part 'setting_info.freezed.dart';

@freezed
class SettingInfo with _$SettingInfo {
  const factory SettingInfo({
    required final bool isRich,
    final SlackWebhookUrl? slackWebhookUrl,
  }) = _SettingInfo;

  const SettingInfo._();
}
