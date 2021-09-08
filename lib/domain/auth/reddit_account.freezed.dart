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

  _RedditAccount call(
      {@HiveField(0) required String accessToken,
      @HiveField(1) required int expiresIn,
      @HiveField(2) required String refreshToken,
      @HiveField(3) required String scope}) {
    return _RedditAccount(
      accessToken: accessToken,
      expiresIn: expiresIn,
      refreshToken: refreshToken,
      scope: scope,
    );
  }
}

/// @nodoc
const $RedditAccount = _$RedditAccountTearOff();

/// @nodoc
mixin _$RedditAccount {
  @HiveField(0)
  String get accessToken => throw _privateConstructorUsedError;
  @HiveField(1)
  int get expiresIn => throw _privateConstructorUsedError;
  @HiveField(2)
  String get refreshToken => throw _privateConstructorUsedError;
  @HiveField(3)
  String get scope => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedditAccountCopyWith<RedditAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedditAccountCopyWith<$Res> {
  factory $RedditAccountCopyWith(
          RedditAccount value, $Res Function(RedditAccount) then) =
      _$RedditAccountCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String accessToken,
      @HiveField(1) int expiresIn,
      @HiveField(2) String refreshToken,
      @HiveField(3) String scope});
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
    Object? accessToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {@HiveField(0) String accessToken,
      @HiveField(1) int expiresIn,
      @HiveField(2) String refreshToken,
      @HiveField(3) String scope});
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
    Object? accessToken = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_RedditAccount(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: expiresIn == freezed
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      scope: scope == freezed
          ? _value.scope
          : scope // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@HiveType(typeId: 0)
class _$_RedditAccount extends _RedditAccount {
  const _$_RedditAccount(
      {@HiveField(0) required this.accessToken,
      @HiveField(1) required this.expiresIn,
      @HiveField(2) required this.refreshToken,
      @HiveField(3) required this.scope})
      : super._();

  @override
  @HiveField(0)
  final String accessToken;
  @override
  @HiveField(1)
  final int expiresIn;
  @override
  @HiveField(2)
  final String refreshToken;
  @override
  @HiveField(3)
  final String scope;

  @override
  String toString() {
    return 'RedditAccount(accessToken: $accessToken, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedditAccount &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(scope);

  @JsonKey(ignore: true)
  @override
  _$RedditAccountCopyWith<_RedditAccount> get copyWith =>
      __$RedditAccountCopyWithImpl<_RedditAccount>(this, _$identity);
}

abstract class _RedditAccount extends RedditAccount {
  const factory _RedditAccount(
      {@HiveField(0) required String accessToken,
      @HiveField(1) required int expiresIn,
      @HiveField(2) required String refreshToken,
      @HiveField(3) required String scope}) = _$_RedditAccount;
  const _RedditAccount._() : super._();

  @override
  @HiveField(0)
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  int get expiresIn => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  String get scope => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RedditAccountCopyWith<_RedditAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
