// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailState {

 Object? get error;
/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailStateCopyWith<MovieDetailState> get copyWith => _$MovieDetailStateCopyWithImpl<MovieDetailState>(this as MovieDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailState&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'MovieDetailState(error: $error)';
}


}

/// @nodoc
abstract mixin class $MovieDetailStateCopyWith<$Res>  {
  factory $MovieDetailStateCopyWith(MovieDetailState value, $Res Function(MovieDetailState) _then) = _$MovieDetailStateCopyWithImpl;
@useResult
$Res call({
 Object? error
});




}
/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._self, this._then);

  final MovieDetailState _self;
  final $Res Function(MovieDetailState) _then;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? error = freezed,}) {
  return _then(_self.copyWith(
error: freezed == error ? _self.error : error ,
  ));
}

}


/// @nodoc


class _MovieDetailState implements MovieDetailState {
  const _MovieDetailState({this.error});
  

@override final  Object? error;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailStateCopyWith<_MovieDetailState> get copyWith => __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailState&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'MovieDetailState(error: $error)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailStateCopyWith<$Res> implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(_MovieDetailState value, $Res Function(_MovieDetailState) _then) = __$MovieDetailStateCopyWithImpl;
@override @useResult
$Res call({
 Object? error
});




}
/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(this._self, this._then);

  final _MovieDetailState _self;
  final $Res Function(_MovieDetailState) _then;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? error = freezed,}) {
  return _then(_MovieDetailState(
error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on
