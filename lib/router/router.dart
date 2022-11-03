import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:parrot/feature/input/input_screen.dart';

part 'router.g.dart';

final routerProvider = Provider(
  (_) => GoRouter(routes: $appRoutes),
);

@TypedGoRoute<InputRoute>(
  path: '/',
)
class InputRoute extends GoRouteData {
  const InputRoute();

  @override
  Widget build(BuildContext context) => const InputScreen();
}
