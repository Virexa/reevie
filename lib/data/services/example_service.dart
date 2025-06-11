import 'package:flutter_riverpod/flutter_riverpod.dart';

final exampleServiceProvider = Provider<ExampleService>((ref) {
  return ExampleService();
});

class ExampleService {


  int getValue() => 1;
}
