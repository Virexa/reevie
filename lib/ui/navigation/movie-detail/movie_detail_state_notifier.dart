import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail_state_notifier.freezed.dart';

final movieDetailStateNotifierProvider =
    StateNotifierProvider.autoDispose<
      MovieDetailStateNotifier,
      MovieDetailState
    >((ref) => MovieDetailStateNotifier());

class MovieDetailStateNotifier extends StateNotifier<MovieDetailState> {
  MovieDetailStateNotifier() : super(MovieDetailState());
}

@freezed
abstract class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({Object? error}) = _MovieDetailState;
}
