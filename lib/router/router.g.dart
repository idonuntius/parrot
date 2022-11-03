// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $inputRoute,
    ];

GoRoute get $inputRoute => GoRouteData.$route(
      path: '/',
      factory: $InputRouteExtension._fromState,
    );

extension $InputRouteExtension on InputRoute {
  static InputRoute _fromState(GoRouterState state) => const InputRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
