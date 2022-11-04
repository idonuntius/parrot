import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/feature/home/home_screen.dart';

class App extends ConsumerWidget {
  const App({super.key});

  ThemeData get _theme => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lime,
        brightness: Brightness.light,
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'parrot',
      theme: _theme,
      home: const HomeScreen(),
    );
  }
}
