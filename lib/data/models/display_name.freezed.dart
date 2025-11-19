// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'display_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DisplayName {

 String get text; String get languageCode;
/// Create a copy of DisplayName
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayNameCopyWith<DisplayName> get copyWith => _$DisplayNameCopyWithImpl<DisplayName>(this as DisplayName, _$identity);

  /// Serializes this DisplayName to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayName&&(identical(other.text, text) || other.text == text)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,languageCode);

@override
String toString() {
  return 'DisplayName(text: $text, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class $DisplayNameCopyWith<$Res>  {
  factory $DisplayNameCopyWith(DisplayName value, $Res Function(DisplayName) _then) = _$DisplayNameCopyWithImpl;
@useResult
$Res call({
 String text, String languageCode
});




}
/// @nodoc
class _$DisplayNameCopyWithImpl<$Res>
    implements $DisplayNameCopyWith<$Res> {
  _$DisplayNameCopyWithImpl(this._self, this._then);

  final DisplayName _self;
  final $Res Function(DisplayName) _then;

/// Create a copy of DisplayName
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = null,Object? languageCode = null,}) {
  return _then(_self.copyWith(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DisplayName].
extension DisplayNamePatterns on DisplayName {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DisplayName value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisplayName() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DisplayName value)  $default,){
final _that = this;
switch (_that) {
case _DisplayName():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DisplayName value)?  $default,){
final _that = this;
switch (_that) {
case _DisplayName() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String text,  String languageCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisplayName() when $default != null:
return $default(_that.text,_that.languageCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String text,  String languageCode)  $default,) {final _that = this;
switch (_that) {
case _DisplayName():
return $default(_that.text,_that.languageCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String text,  String languageCode)?  $default,) {final _that = this;
switch (_that) {
case _DisplayName() when $default != null:
return $default(_that.text,_that.languageCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DisplayName implements DisplayName {
  const _DisplayName({required this.text, required this.languageCode});
  factory _DisplayName.fromJson(Map<String, dynamic> json) => _$DisplayNameFromJson(json);

@override final  String text;
@override final  String languageCode;

/// Create a copy of DisplayName
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayNameCopyWith<_DisplayName> get copyWith => __$DisplayNameCopyWithImpl<_DisplayName>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DisplayNameToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayName&&(identical(other.text, text) || other.text == text)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,languageCode);

@override
String toString() {
  return 'DisplayName(text: $text, languageCode: $languageCode)';
}


}

/// @nodoc
abstract mixin class _$DisplayNameCopyWith<$Res> implements $DisplayNameCopyWith<$Res> {
  factory _$DisplayNameCopyWith(_DisplayName value, $Res Function(_DisplayName) _then) = __$DisplayNameCopyWithImpl;
@override @useResult
$Res call({
 String text, String languageCode
});




}
/// @nodoc
class __$DisplayNameCopyWithImpl<$Res>
    implements _$DisplayNameCopyWith<$Res> {
  __$DisplayNameCopyWithImpl(this._self, this._then);

  final _DisplayName _self;
  final $Res Function(_DisplayName) _then;

/// Create a copy of DisplayName
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = null,Object? languageCode = null,}) {
  return _then(_DisplayName(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
