import 'package:flutter/cupertino.dart'
    show BuildContext, Widget, NavigatorState, GlobalKey;
import 'package:go_router/go_router.dart';
import 'package:reevie/ui/navigation/movie-detail/movie_detail_screen.dart';
import 'package:reevie/ui/navigation/on_board/onboard_screen.dart';
import 'home/home_screen.dart';

part 'routes.g.dart';

class RoutePaths {
  static const onboard = '/onboard';
  static const home = '/';
  static const movieDetail = ':id';
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<OnBoardRoute>(path: RoutePaths.onboard)
class OnBoardRoute extends GoRouteData {
  const OnBoardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OnBoardScreen();
}

@TypedGoRoute<HomeRoute>(
  path: RoutePaths.home,
  routes: [TypedGoRoute<MovieDetailRoute>(path: RoutePaths.movieDetail)],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

class MovieDetailRoute extends GoRouteData {
  final String id;

  const MovieDetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MovieDetailScreen();
}
