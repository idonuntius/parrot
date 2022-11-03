import 'package:flutter/material.dart';
import 'package:parrot/feature/component/button.dart';

class FailedWidget extends StatelessWidget {
  const FailedWidget({super.key, required this.retry});

  final VoidCallback retry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('An error has occurred. Please retry.'),
            const SizedBox(height: 12),
            Button(
              onPressed: retry,
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
