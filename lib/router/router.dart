import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:parrot/feature/detail/detail_screen.dart';
import 'package:parrot/feature/home/home_screen.dart';
import 'package:parrot/feature/input/input_screen.dart';

part 'router.g.dart';

final routerProvider = Provider(
  (_) => GoRouter(routes: $appRoutes),
);

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<DetailRoute>(path: 'detail'),
    TypedGoRoute<InputRoute>(path: 'input'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context) => const HomeScreen();
}

class DetailRoute extends GoRouteData {
  const DetailRoute();

  @override
  Widget build(BuildContext context) => const DetailScreen();
}

class InputRoute extends GoRouteData {
  const InputRoute();

  @override
  Widget build(BuildContext context) => const InputScreen();
}
