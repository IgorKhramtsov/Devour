// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'routes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RedditRedirectArgumentsTearOff {
  const _$RedditRedirectArgumentsTearOff();

  _RedditRedirectArguments call({required String code, required String state}) {
    return _RedditRedirectArguments(
      code: code,
      state: state,
    );
  }
}

/// @nodoc
const $RedditRedirectArguments = _$RedditRedirectArgumentsTearOff();

/// @nodoc
mixin _$RedditRedirectArguments {
  String get code => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedditRedirectArgumentsCopyWith<RedditRedirectArguments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditRedirectArgumentsCopyWith<$Res> {
  factory $RedditRedirectArgumentsCopyWith(RedditRedirectArguments value,
          $Res Function(RedditRedirectArguments) then) =
      _$RedditRedirectArgumentsCopyWithImpl<$Res>;
  $Res call({String code, String state});
}

/// @nodoc
class _$RedditRedirectArgumentsCopyWithImpl<$Res>
    implements $RedditRedirectArgumentsCopyWith<$Res> {
  _$RedditRedirectArgumentsCopyWithImpl(this._value, this._then);

  final RedditRedirectArguments _value;
  // ignore: unused_field
  final $Res Function(RedditRedirectArguments) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RedditRedirectArgumentsCopyWith<$Res>
    implements $RedditRedirectArgumentsCopyWith<$Res> {
  factory _$RedditRedirectArgumentsCopyWith(_RedditRedirectArguments value,
          $Res Function(_RedditRedirectArguments) then) =
      __$RedditRedirectArgumentsCopyWithImpl<$Res>;
  @override
  $Res call({String code, String state});
}

/// @nodoc
class __$RedditRedirectArgumentsCopyWithImpl<$Res>
    extends _$RedditRedirectArgumentsCopyWithImpl<$Res>
    implements _$RedditRedirectArgumentsCopyWith<$Res> {
  __$RedditRedirectArgumentsCopyWithImpl(_RedditRedirectArguments _value,
      $Res Function(_RedditRedirectArguments) _then)
      : super(_value, (v) => _then(v as _RedditRedirectArguments));

  @override
  _RedditRedirectArguments get _value =>
      super._value as _RedditRedirectArguments;

  @override
  $Res call({
    Object? code = freezed,
    Object? state = freezed,
  }) {
    return _then(_RedditRedirectArguments(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RedditRedirectArguments implements _RedditRedirectArguments {
  _$_RedditRedirectArguments({required this.code, required this.state});

  @override
  final String code;
  @override
  final String state;

  @override
  String toString() {
    return 'RedditRedirectArguments(code: $code, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditRedirectArguments &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$RedditRedirectArgumentsCopyWith<_RedditRedirectArguments> get copyWith =>
      __$RedditRedirectArgumentsCopyWithImpl<_RedditRedirectArguments>(
          this, _$identity);
}

abstract class _RedditRedirectArguments implements RedditRedirectArguments {
  factory _RedditRedirectArguments(
      {required String code,
      required String state}) = _$_RedditRedirectArguments;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditRedirectArgumentsCopyWith<_RedditRedirectArguments> get copyWith =>
      throw _privateConstructorUsedError;
}
