import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reevie/ui/extensions/context_extension.dart';
import '../gen/l10n/app_localizations.dart';
import '../style/theme/color/builder.dart';
import '../style/theme/color/colors.dart';
import 'navigation/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late GoRouter _router;

  String _configureInitialRoute() {
    return RoutePaths.example;
  }

  @override
  void initState() {
    _router = GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: _configureInitialRoute(),
      routes: $appRoutes,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeNotifier(
      colorScheme: darkThemeColors,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (context) => context.l10n.app_name,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _router,
        theme: AppThemeBuilder.materialThemeFromColorScheme(
          colorScheme: darkThemeColors,
        ),
      ),
    );
  }
}
