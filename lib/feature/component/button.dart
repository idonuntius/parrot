import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.child,
    this.onPressed,
    this.isLoading = false,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: ElevatedButton(
        onPressed: onPressed,
        child: isLoading
            ? const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            : child,
      ),
    );
  }
}
