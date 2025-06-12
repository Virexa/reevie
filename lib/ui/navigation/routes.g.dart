// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$exampleRoute];

RouteBase get $exampleRoute =>
    GoRouteData.$route(path: '/', factory: $ExampleRouteExtension._fromState);

extension $ExampleRouteExtension on ExampleRoute {
  static ExampleRoute _fromState(GoRouterState state) => const ExampleRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
