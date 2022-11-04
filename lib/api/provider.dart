import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/api/chrome/chrome_api.dart';
import 'package:parrot/api/slack/dio_creator.dart';
import 'package:parrot/api/slack/slack_api.dart';
import 'package:parrot/api/slack/slack_api_impl.dart';
// `flutter test` command execute in Dart VM where Javascript is not supported.
import 'chrome/chrome_api_impl.dart' if (dart.library.io) 'chrome/chrome_api_mock.dart';

final chromeApiProvider = Provider<ChromeApi>((_) => ChromeApiImpl());

final slackApiProvider = Provider<SlackApi>((ref) => SlackApiImpl(ref.read(dioProvider)));
