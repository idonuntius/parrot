import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/feature/component/button.dart';
import 'package:parrot/feature/component/failed_widget.dart';
import 'package:parrot/feature/component/loading_indicator.dart';
import 'package:parrot/feature/detail/detail_controller.dart';
import 'package:parrot/feature/router/router.dart';
import 'package:parrot/model/slack_webhook_url.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Consumer(builder: (context, ref, child) {
        return ref.watch(detailControllerProvider).maybeWhen(
              successful: (data) => _Successful(data),
              failed: (_) => FailedWidget(retry: ref.read(detailControllerProvider.notifier).retry),
              orElse: () => const LoadingIndicator(),
            );
      }),
    );
  }
}

class _Successful extends ConsumerWidget {
  const _Successful(this.slackWebhookUrl);

  final SlackWebhookUrl? slackWebhookUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (slackWebhookUrl != null) ...[
              Text(slackWebhookUrl!.maskedUrl()),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Button(
                    onPressed: () => const InputRouter().go(context),
                    child: const Text('Edit'),
                  ),
                  const SizedBox(width: 12),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    onPressed: () => _showDialog(context, ref),
                    child: const Text('Delete'),
                  ),
                ],
              )
            ] else ...[
              const Text('Not entered.'),
              const SizedBox(height: 12),
              Button(
                onPressed: () => const InputRouter().go(context),
                child: const Text('Registration'),
              ),
            ]
          ],
        ),
      ),
    );
  }

  Future<void> _showDialog(BuildContext context, WidgetRef ref) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Remove Slack Webhook URL?'),
          actions: <Widget>[
            GestureDetector(
              child: const Text('Cancel'),
              onTap: () => Navigator.pop(context),
            ),
            GestureDetector(
              child: const Text(
                'Delete',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                ref.read(detailControllerProvider.notifier).deleteSlackWebhookUrl();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
