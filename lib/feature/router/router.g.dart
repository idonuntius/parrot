// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeRoute,
    ];

GoRoute get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'detail',
          factory: $DetailRouterExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'input',
          factory: $InputRouterExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $DetailRouterExtension on DetailRouter {
  static DetailRouter _fromState(GoRouterState state) => const DetailRouter();

  String get location => GoRouteData.$location(
        '/detail',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $InputRouterExtension on InputRouter {
  static InputRouter _fromState(GoRouterState state) => const InputRouter();

  String get location => GoRouteData.$location(
        '/input',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
