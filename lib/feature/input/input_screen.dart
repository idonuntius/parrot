import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/feature/component/button.dart';
import 'package:parrot/feature/component/failed_widget.dart';
import 'package:parrot/feature/component/loading_indicator.dart';
import 'package:parrot/feature/input/input_controller.dart';
import 'package:parrot/feature/input/input_state.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Slack Webhook URL'),
      ),
      body: Consumer(builder: (context, ref, _) {
        final state = ref.watch(inputControllerProvider);

        ref.listen(inputControllerProvider, (_, state) {
          state.savingUrlState.maybeWhen(
            successful: (_) {
              _showSnackBar(context, 'Successfully saved');
              Navigator.of(context).pop(true);
            },
            failed: (_) {
              _showSnackBar(context, 'Failed to save');
              ref.read(inputControllerProvider.notifier).resetSavingState();
            },
            orElse: () {},
          );
        });

        return state.gettingUrlState.maybeWhen(
          successful: (_) => _Successful(state),
          failed: (_) => FailedWidget(
            retry: ref.read(inputControllerProvider.notifier).retry,
          ),
          orElse: () => const LoadingIndicator(),
        );
      }),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}

class _Successful extends ConsumerWidget {
  const _Successful(this.state);

  final InputState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(inputControllerProvider.notifier);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              initialValue: state.url,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                filled: true,
                hintText: 'Please enter Slack Webhook URL',
                labelText: 'Slack Webhook URL',
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(100),
              ],
              onChanged: (value) => vm.onUrlChanged(value),
              validator: (_) => vm.validate(),
            ),
            const SizedBox(height: 12),
            Button(
              isLoading: state.savingUrlState.isInProgress && state.savingUrlState.isSuccessful,
              onPressed: vm.validate() != null ? null : () => vm.onSavingButtonTapped(),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
