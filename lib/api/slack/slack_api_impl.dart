import 'package:dio/dio.dart';
import 'package:parrot/api/slack/slack_api.dart';
import 'package:parrot/model/slack_webhook_url.dart';

class SlackApiImpl implements SlackApi {
  const SlackApiImpl(this._dio);

  final Dio _dio;

  @override
  Future<void> send(SlackWebhookUrl url, Map<String, String> data) {
    return _dio.post<void>(url.value, data: data);
  }
}
