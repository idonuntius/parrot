import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/feature/component/button.dart';
import 'package:parrot/feature/component/failed_widget.dart';
import 'package:parrot/feature/component/loading_indicator.dart';
import 'package:parrot/feature/home/home_controller.dart';
import 'package:parrot/feature/home/home_state.dart';
import 'package:parrot/feature/router/router.dart';
import 'package:parrot/model/slack_webhook_url.dart';
import 'package:parrot/model/tab_url.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Consumer(builder: (context, ref, _) {
        final state = ref.watch(homeControllerProvider);
        return state.gettingState.maybeWhen(
          successful: (slackWebhookUrl, tabUrl) => _Successful(
            homeState: state,
            slackWebhookUrl: slackWebhookUrl,
            tabUrl: tabUrl,
          ),
          slackWebhookUrlNotSaved: () => _SlackWebhookUrlNotSaved(),
          failed: (_) => FailedWidget(retry: ref.read(homeControllerProvider.notifier).retry),
          orElse: () => const LoadingIndicator(),
        );
      }),
    );
  }
}

class _Successful extends ConsumerWidget {
  const _Successful({required this.homeState, required this.slackWebhookUrl, required this.tabUrl});

  final HomeState homeState;
  final SlackWebhookUrl slackWebhookUrl;
  final TabUrl tabUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tabUrl.value,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                ),
                const SizedBox(height: 12),
                Button(
                  onPressed: () => ref.read(homeControllerProvider.notifier).sendToUrl(),
                  child: const Text('Send'),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: IconButton(
              onPressed: () => const DetailRouter().go(context),
              icon: const Icon(Icons.star),
            ),
          ),
        ),
      ],
    );
  }
}

class _SlackWebhookUrlNotSaved extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Not entered.'),
            const SizedBox(height: 12),
            Button(
              onPressed: () => const InputRouter().go(context),
              child: const Text('Registration'),
            ),
          ],
        ),
      ),
    );
  }
}
