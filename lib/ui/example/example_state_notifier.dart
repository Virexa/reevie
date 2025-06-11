import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/services/example_service.dart';

part 'example_state_notifier.freezed.dart';

final exampleStateNotifierProvider =
    StateNotifierProvider.autoDispose<ExampleStateNotifier, ExampleState>(
      (ref) => ExampleStateNotifier(ref.read(exampleServiceProvider)),
    );

class ExampleStateNotifier extends StateNotifier<ExampleState> {
  final ExampleService _exampleService;

  ExampleStateNotifier(this._exampleService) : super(ExampleState(count: 0));

  void increment() {
    state = state.copyWith(count: state.count + _exampleService.getValue());
  }

  void decrement() {
    state = state.copyWith(count: state.count - _exampleService.getValue());
  }
}

@freezed
abstract class ExampleState with _$ExampleState {
  const factory ExampleState({@Default(0) int count, Object? error}) =
      _ExampleState;
}
