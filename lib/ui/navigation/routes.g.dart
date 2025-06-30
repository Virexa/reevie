// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $onBoardRoute,
  $loginRoute,
  $homeRoute,
  $categoryRoute,
  $movieDetailRoute,
  $searchRoute,
];

RouteBase get $onBoardRoute => GoRouteData.$route(
  path: '/onboard',

  factory: $OnBoardRouteExtension._fromState,
);

extension $OnBoardRouteExtension on OnBoardRoute {
  static OnBoardRoute _fromState(GoRouterState state) => const OnBoardRoute();

  String get location => GoRouteData.$location('/onboard');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
  path: '/login',

  factory: $LoginRouteExtension._fromState,
);

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location('/login');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeRoute =>
    GoRouteData.$route(path: '/', factory: $HomeRouteExtension._fromState);

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $categoryRoute => GoRouteData.$route(
  path: '/category/:id',

  factory: $CategoryRouteExtension._fromState,
);

extension $CategoryRouteExtension on CategoryRoute {
  static CategoryRoute _fromState(GoRouterState state) =>
      CategoryRoute(id: state.pathParameters['id']!);

  String get location =>
      GoRouteData.$location('/category/${Uri.encodeComponent(id)}');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $movieDetailRoute => GoRouteData.$route(
  path: '/movie/:id',

  factory: $MovieDetailRouteExtension._fromState,
);

extension $MovieDetailRouteExtension on MovieDetailRoute {
  static MovieDetailRoute _fromState(GoRouterState state) =>
      MovieDetailRoute(id: state.pathParameters['id']!);

  String get location =>
      GoRouteData.$location('/movie/${Uri.encodeComponent(id)}');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $searchRoute => GoRouteData.$route(
  path: '/search',

  factory: $SearchRouteExtension._fromState,
);

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location('/search');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
