import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reevie/ui/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
