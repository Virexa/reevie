// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'example_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ExampleState {

 int get count; Object? get error;
/// Create a copy of ExampleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExampleStateCopyWith<ExampleState> get copyWith => _$ExampleStateCopyWithImpl<ExampleState>(this as ExampleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExampleState&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ExampleState(count: $count, error: $error)';
}


}

/// @nodoc
abstract mixin class $ExampleStateCopyWith<$Res>  {
  factory $ExampleStateCopyWith(ExampleState value, $Res Function(ExampleState) _then) = _$ExampleStateCopyWithImpl;
@useResult
$Res call({
 int count, Object? error
});




}
/// @nodoc
class _$ExampleStateCopyWithImpl<$Res>
    implements $ExampleStateCopyWith<$Res> {
  _$ExampleStateCopyWithImpl(this._self, this._then);

  final ExampleState _self;
  final $Res Function(ExampleState) _then;

/// Create a copy of ExampleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error ,
  ));
}

}


/// @nodoc


class _ExampleState implements ExampleState {
  const _ExampleState({this.count = 0, this.error});
  

@override@JsonKey() final  int count;
@override final  Object? error;

/// Create a copy of ExampleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExampleStateCopyWith<_ExampleState> get copyWith => __$ExampleStateCopyWithImpl<_ExampleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExampleState&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'ExampleState(count: $count, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ExampleStateCopyWith<$Res> implements $ExampleStateCopyWith<$Res> {
  factory _$ExampleStateCopyWith(_ExampleState value, $Res Function(_ExampleState) _then) = __$ExampleStateCopyWithImpl;
@override @useResult
$Res call({
 int count, Object? error
});




}
/// @nodoc
class __$ExampleStateCopyWithImpl<$Res>
    implements _$ExampleStateCopyWith<$Res> {
  __$ExampleStateCopyWithImpl(this._self, this._then);

  final _ExampleState _self;
  final $Res Function(_ExampleState) _then;

/// Create a copy of ExampleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? error = freezed,}) {
  return _then(_ExampleState(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on
