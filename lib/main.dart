import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movirex/ui/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    UncontrolledProviderScope(
      container: await _configureContainer(),
      child: const MyApp(),
    ),
  );
}

Future<ProviderContainer> _configureContainer() async {
  return ProviderContainer(overrides: []);
}
