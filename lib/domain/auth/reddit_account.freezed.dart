// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reddit_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RedditAccountTearOff {
  const _$RedditAccountTearOff();

  _RedditAccount call({@HiveField(0) required String token}) {
    return _RedditAccount(
      token: token,
    );
  }
}

/// @nodoc
const $RedditAccount = _$RedditAccountTearOff();

/// @nodoc
mixin _$RedditAccount {
  @HiveField(0)
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedditAccountCopyWith<RedditAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditAccountCopyWith<$Res> {
  factory $RedditAccountCopyWith(
          RedditAccount value, $Res Function(RedditAccount) then) =
      _$RedditAccountCopyWithImpl<$Res>;
  $Res call({@HiveField(0) String token});
}

/// @nodoc
class _$RedditAccountCopyWithImpl<$Res>
    implements $RedditAccountCopyWith<$Res> {
  _$RedditAccountCopyWithImpl(this._value, this._then);

  final RedditAccount _value;
  // ignore: unused_field
  final $Res Function(RedditAccount) _then;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RedditAccountCopyWith<$Res>
    implements $RedditAccountCopyWith<$Res> {
  factory _$RedditAccountCopyWith(
          _RedditAccount value, $Res Function(_RedditAccount) then) =
      __$RedditAccountCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) String token});
}

/// @nodoc
class __$RedditAccountCopyWithImpl<$Res>
    extends _$RedditAccountCopyWithImpl<$Res>
    implements _$RedditAccountCopyWith<$Res> {
  __$RedditAccountCopyWithImpl(
      _RedditAccount _value, $Res Function(_RedditAccount) _then)
      : super(_value, (v) => _then(v as _RedditAccount));

  @override
  _RedditAccount get _value => super._value as _RedditAccount;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_RedditAccount(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0)
class _$_RedditAccount extends _RedditAccount {
  const _$_RedditAccount({@HiveField(0) required this.token}) : super._();

  @override
  @HiveField(0)
  final String token;

  @override
  String toString() {
    return 'RedditAccount(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditAccount &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(token);

  @JsonKey(ignore: true)
  @override
  _$RedditAccountCopyWith<_RedditAccount> get copyWith =>
      __$RedditAccountCopyWithImpl<_RedditAccount>(this, _$identity);
}

abstract class _RedditAccount extends RedditAccount {
  const factory _RedditAccount({@HiveField(0) required String token}) =
      _$_RedditAccount;
  const _RedditAccount._() : super._();

  @override
  @HiveField(0)
  String get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditAccountCopyWith<_RedditAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
