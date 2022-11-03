import 'package:freezed_annotation/freezed_annotation.dart';

part 'slack_webhook_url.freezed.dart';

@freezed
class SlackWebhookUrl with _$SlackWebhookUrl {
  const factory SlackWebhookUrl({
    required String value,
  }) = _SlackWebhookUrl;

  const SlackWebhookUrl._();

  String maskedUrl() {
    try {
      final url = Uri.parse(value);
      final splitedPath = url.path.split('/');
      final path = splitedPath.isNotEmpty && splitedPath.length > 1 ? splitedPath[1] : '';
      return 'https://${url.host}/$path/*****${value.substring(value.length - 4)}';
    } on FormatException catch (_) {
      return '';
    }
  }
}
