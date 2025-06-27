import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state_notifier.freezed.dart';

final homeStateNotifierProvider =
    StateNotifierProvider.autoDispose<HomeStateNotifier, HomeState>(
      (ref) => HomeStateNotifier(),
    );

class HomeStateNotifier extends StateNotifier<HomeState> {
  HomeStateNotifier() : super(HomeState());
}

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({Object? error}) = _HomeState;
}
