import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/feature/app/app.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
