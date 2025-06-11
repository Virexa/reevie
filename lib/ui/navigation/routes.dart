import 'package:flutter/cupertino.dart'
    show BuildContext, Widget, NavigatorState, GlobalKey;
import 'package:go_router/go_router.dart';
import 'package:movirex/ui/example/example_screen.dart';

part 'routes.g.dart';

class RoutePaths {
  static const example = '/';
}

final rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<ExampleRoute>(path: RoutePaths.example)
class ExampleRoute extends GoRouteData with _$ExampleRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ExampleScreen();
}
