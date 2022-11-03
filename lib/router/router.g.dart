// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $detailRoute,
    ];

GoRoute get $detailRoute => GoRouteData.$route(
      path: '/',
      factory: $DetailRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'input',
          factory: $InputRouteExtension._fromState,
        ),
      ],
    );

extension $DetailRouteExtension on DetailRoute {
  static DetailRoute _fromState(GoRouterState state) => const DetailRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $InputRouteExtension on InputRoute {
  static InputRoute _fromState(GoRouterState state) => const InputRoute();

  String get location => GoRouteData.$location(
        '/input',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
