import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:reevie/ui/navigation/login/login_screen.dart';
import 'package:reevie/ui/navigation/movie-detail/movie_detail_screen.dart';
import 'package:reevie/ui/navigation/on_board/onboard_screen.dart';
import 'package:reevie/ui/navigation/search/search_screen.dart';
import 'home/home_screen.dart';

part 'routes.g.dart';

class RoutePaths {
  static const onboard = '/onboard';
  static const home = '/';
  static const movieDetail = '/movie/:id';
  static const search = '/search';
  static const login = '/login';
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<OnBoardRoute>(path: RoutePaths.onboard)
class OnBoardRoute extends GoRouteData {
  const OnBoardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnBoardScreen();
}

@TypedGoRoute<LoginRoute>(path: RoutePaths.login)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<HomeRoute>(path: RoutePaths.home)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

@TypedGoRoute<MovieDetailRoute>(path: RoutePaths.movieDetail)
class MovieDetailRoute extends GoRouteData {
  final String id;

  const MovieDetailRoute({required this.id});

  @override
  CustomTransitionPage buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: MovieDetailScreen(),
      transitionsBuilder:
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) => FadeTransition(opacity: animation, child: child),
    );
  }
}

@TypedGoRoute<SearchRoute>(path: RoutePaths.search)
class SearchRoute extends GoRouteData {
  const SearchRoute();

  @override
  CustomTransitionPage buildPage(BuildContext context, GoRouterState state) {
    return CustomTransitionPage(
      child: SearchScreen(),
      transitionsBuilder:
          (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) => FadeTransition(opacity: animation, child: child),
    );
  }
}
