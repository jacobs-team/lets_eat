// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FoodMapState {

 FoodMapStatus get status; double get radiusMeters; List<Place> get places;
/// Create a copy of FoodMapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodMapStateCopyWith<FoodMapState> get copyWith => _$FoodMapStateCopyWithImpl<FoodMapState>(this as FoodMapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodMapState&&(identical(other.status, status) || other.status == status)&&(identical(other.radiusMeters, radiusMeters) || other.radiusMeters == radiusMeters)&&const DeepCollectionEquality().equals(other.places, places));
}


@override
int get hashCode => Object.hash(runtimeType,status,radiusMeters,const DeepCollectionEquality().hash(places));

@override
String toString() {
  return 'FoodMapState(status: $status, radiusMeters: $radiusMeters, places: $places)';
}


}

/// @nodoc
abstract mixin class $FoodMapStateCopyWith<$Res>  {
  factory $FoodMapStateCopyWith(FoodMapState value, $Res Function(FoodMapState) _then) = _$FoodMapStateCopyWithImpl;
@useResult
$Res call({
 FoodMapStatus status, double radiusMeters, List<Place> places
});




}
/// @nodoc
class _$FoodMapStateCopyWithImpl<$Res>
    implements $FoodMapStateCopyWith<$Res> {
  _$FoodMapStateCopyWithImpl(this._self, this._then);

  final FoodMapState _self;
  final $Res Function(FoodMapState) _then;

/// Create a copy of FoodMapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? radiusMeters = null,Object? places = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FoodMapStatus,radiusMeters: null == radiusMeters ? _self.radiusMeters : radiusMeters // ignore: cast_nullable_to_non_nullable
as double,places: null == places ? _self.places : places // ignore: cast_nullable_to_non_nullable
as List<Place>,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodMapState].
extension FoodMapStatePatterns on FoodMapState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodMapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodMapState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodMapState value)  $default,){
final _that = this;
switch (_that) {
case _FoodMapState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodMapState value)?  $default,){
final _that = this;
switch (_that) {
case _FoodMapState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FoodMapStatus status,  double radiusMeters,  List<Place> places)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodMapState() when $default != null:
return $default(_that.status,_that.radiusMeters,_that.places);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FoodMapStatus status,  double radiusMeters,  List<Place> places)  $default,) {final _that = this;
switch (_that) {
case _FoodMapState():
return $default(_that.status,_that.radiusMeters,_that.places);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FoodMapStatus status,  double radiusMeters,  List<Place> places)?  $default,) {final _that = this;
switch (_that) {
case _FoodMapState() when $default != null:
return $default(_that.status,_that.radiusMeters,_that.places);case _:
  return null;

}
}

}

/// @nodoc


class _FoodMapState implements FoodMapState {
  const _FoodMapState({this.status = FoodMapStatus.init, this.radiusMeters = 8000, final  List<Place> places = const []}): _places = places;
  

@override@JsonKey() final  FoodMapStatus status;
@override@JsonKey() final  double radiusMeters;
 final  List<Place> _places;
@override@JsonKey() List<Place> get places {
  if (_places is EqualUnmodifiableListView) return _places;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_places);
}


/// Create a copy of FoodMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodMapStateCopyWith<_FoodMapState> get copyWith => __$FoodMapStateCopyWithImpl<_FoodMapState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodMapState&&(identical(other.status, status) || other.status == status)&&(identical(other.radiusMeters, radiusMeters) || other.radiusMeters == radiusMeters)&&const DeepCollectionEquality().equals(other._places, _places));
}


@override
int get hashCode => Object.hash(runtimeType,status,radiusMeters,const DeepCollectionEquality().hash(_places));

@override
String toString() {
  return 'FoodMapState(status: $status, radiusMeters: $radiusMeters, places: $places)';
}


}

/// @nodoc
abstract mixin class _$FoodMapStateCopyWith<$Res> implements $FoodMapStateCopyWith<$Res> {
  factory _$FoodMapStateCopyWith(_FoodMapState value, $Res Function(_FoodMapState) _then) = __$FoodMapStateCopyWithImpl;
@override @useResult
$Res call({
 FoodMapStatus status, double radiusMeters, List<Place> places
});




}
/// @nodoc
class __$FoodMapStateCopyWithImpl<$Res>
    implements _$FoodMapStateCopyWith<$Res> {
  __$FoodMapStateCopyWithImpl(this._self, this._then);

  final _FoodMapState _self;
  final $Res Function(_FoodMapState) _then;

/// Create a copy of FoodMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? radiusMeters = null,Object? places = null,}) {
  return _then(_FoodMapState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FoodMapStatus,radiusMeters: null == radiusMeters ? _self.radiusMeters : radiusMeters // ignore: cast_nullable_to_non_nullable
as double,places: null == places ? _self._places : places // ignore: cast_nullable_to_non_nullable
as List<Place>,
  ));
}


}

// dart format on
