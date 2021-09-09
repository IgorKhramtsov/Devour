// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reddit_auth_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorizationResponse _$AuthorizationResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthorizationResponse.fromJson(json);
}

/// @nodoc
class _$AuthorizationResponseTearOff {
  const _$AuthorizationResponseTearOff();

  _AuthorizationResponse call(
      {@JsonKey(name: 'access_token') required String accessToken,
      @JsonKey(name: 'token_type') required String tokenType,
      @JsonKey(name: 'expires_in') required int expiresIn,
      @JsonKey(name: 'refresh_token') required String refreshToken,
      @JsonKey(name: 'scope') required String scope}) {
    return _AuthorizationResponse(
      accessToken: accessToken,
      tokenType: tokenType,
      expiresIn: expiresIn,
      refreshToken: refreshToken,
      scope: scope,
    );
  }

  AuthorizationResponse fromJson(Map<String, Object> json) {
    return AuthorizationResponse.fromJson(json);
  }
}

/// @nodoc
const $AuthorizationResponse = _$AuthorizationResponseTearOff();

/// @nodoc
mixin _$AuthorizationResponse {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'scope')
  String get scope => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorizationResponseCopyWith<AuthorizationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizationResponseCopyWith<$Res> {
  factory $AuthorizationResponseCopyWith(AuthorizationResponse value,
          $Res Function(AuthorizationResponse) then) =
      _$AuthorizationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'scope') String scope});
}

/// @nodoc
class _$AuthorizationResponseCopyWithImpl<$Res>
    implements $AuthorizationResponseCopyWith<$Res> {
  _$AuthorizationResponseCopyWithImpl(this._value, this._then);

  final AuthorizationResponse _value;
  // ignore: unused_field
  final $Res Function(AuthorizationResponse) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
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
abstract class _$AuthorizationResponseCopyWith<$Res>
    implements $AuthorizationResponseCopyWith<$Res> {
  factory _$AuthorizationResponseCopyWith(_AuthorizationResponse value,
          $Res Function(_AuthorizationResponse) then) =
      __$AuthorizationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'scope') String scope});
}

/// @nodoc
class __$AuthorizationResponseCopyWithImpl<$Res>
    extends _$AuthorizationResponseCopyWithImpl<$Res>
    implements _$AuthorizationResponseCopyWith<$Res> {
  __$AuthorizationResponseCopyWithImpl(_AuthorizationResponse _value,
      $Res Function(_AuthorizationResponse) _then)
      : super(_value, (v) => _then(v as _AuthorizationResponse));

  @override
  _AuthorizationResponse get _value => super._value as _AuthorizationResponse;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? tokenType = freezed,
    Object? expiresIn = freezed,
    Object? refreshToken = freezed,
    Object? scope = freezed,
  }) {
    return _then(_AuthorizationResponse(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: tokenType == freezed
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$_AuthorizationResponse implements _AuthorizationResponse {
  _$_AuthorizationResponse(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'token_type') required this.tokenType,
      @JsonKey(name: 'expires_in') required this.expiresIn,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'scope') required this.scope});

  factory _$_AuthorizationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthorizationResponseFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'scope')
  final String scope;

  @override
  String toString() {
    return 'AuthorizationResponse(accessToken: $accessToken, tokenType: $tokenType, expiresIn: $expiresIn, refreshToken: $refreshToken, scope: $scope)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthorizationResponse &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
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
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(scope);

  @JsonKey(ignore: true)
  @override
  _$AuthorizationResponseCopyWith<_AuthorizationResponse> get copyWith =>
      __$AuthorizationResponseCopyWithImpl<_AuthorizationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthorizationResponseToJson(this);
  }
}

abstract class _AuthorizationResponse implements AuthorizationResponse {
  factory _AuthorizationResponse(
          {@JsonKey(name: 'access_token') required String accessToken,
          @JsonKey(name: 'token_type') required String tokenType,
          @JsonKey(name: 'expires_in') required int expiresIn,
          @JsonKey(name: 'refresh_token') required String refreshToken,
          @JsonKey(name: 'scope') required String scope}) =
      _$_AuthorizationResponse;

  factory _AuthorizationResponse.fromJson(Map<String, dynamic> json) =
      _$_AuthorizationResponse.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'scope')
  String get scope => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthorizationResponseCopyWith<_AuthorizationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
