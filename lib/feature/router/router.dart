import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:parrot/feature/detail/detail_screen.dart';
import 'package:parrot/feature/home/home_screen.dart';
import 'package:parrot/feature/input/input_screen.dart';

part 'router.g.dart';

final routerProvider = Provider(
  (_) => GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
  ),
);

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<DetailRouter>(
      path: 'detail',
    ),
    TypedGoRoute<InputRouter>(
      path: 'input',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class DetailRouter extends GoRouteData {
  const DetailRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) => const DetailScreen();
}

class InputRouter extends GoRouteData {
  const InputRouter();

  @override
  Widget build(BuildContext context, GoRouterState state) => const InputScreen();
}
