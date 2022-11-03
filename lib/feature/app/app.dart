import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:parrot/router/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  ThemeData get _theme => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lime,
        brightness: Brightness.light,
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'parrot',
      theme: _theme,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
