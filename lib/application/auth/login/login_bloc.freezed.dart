// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  NumberChanged numberChanged(String number) {
    return NumberChanged(
      number,
    );
  }

  ConfirmationCodeChanged confirmationCodeChanged(String confirmationCode) {
    return ConfirmationCodeChanged(
      confirmationCode,
    );
  }

  LoginPressed loginPressed() {
    return const LoginPressed();
  }

  ConfirmPressed confirmPressed() {
    return const ConfirmPressed();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) numberChanged,
    required TResult Function(String confirmationCode) confirmationCodeChanged,
    required TResult Function() loginPressed,
    required TResult Function() confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChanged value) numberChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $NumberChangedCopyWith<$Res> {
  factory $NumberChangedCopyWith(
          NumberChanged value, $Res Function(NumberChanged) then) =
      _$NumberChangedCopyWithImpl<$Res>;
  $Res call({String number});
}

/// @nodoc
class _$NumberChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $NumberChangedCopyWith<$Res> {
  _$NumberChangedCopyWithImpl(
      NumberChanged _value, $Res Function(NumberChanged) _then)
      : super(_value, (v) => _then(v as NumberChanged));

  @override
  NumberChanged get _value => super._value as NumberChanged;

  @override
  $Res call({
    Object? number = freezed,
  }) {
    return _then(NumberChanged(
      number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NumberChanged implements NumberChanged {
  const _$NumberChanged(this.number);

  @override
  final String number;

  @override
  String toString() {
    return 'LoginEvent.numberChanged(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NumberChanged &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(number);

  @JsonKey(ignore: true)
  @override
  $NumberChangedCopyWith<NumberChanged> get copyWith =>
      _$NumberChangedCopyWithImpl<NumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) numberChanged,
    required TResult Function(String confirmationCode) confirmationCodeChanged,
    required TResult Function() loginPressed,
    required TResult Function() confirmPressed,
  }) {
    return numberChanged(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
  }) {
    return numberChanged?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (numberChanged != null) {
      return numberChanged(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChanged value) numberChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return numberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) {
    return numberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (numberChanged != null) {
      return numberChanged(this);
    }
    return orElse();
  }
}

abstract class NumberChanged implements LoginEvent {
  const factory NumberChanged(String number) = _$NumberChanged;

  String get number => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberChangedCopyWith<NumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmationCodeChangedCopyWith<$Res> {
  factory $ConfirmationCodeChangedCopyWith(ConfirmationCodeChanged value,
          $Res Function(ConfirmationCodeChanged) then) =
      _$ConfirmationCodeChangedCopyWithImpl<$Res>;
  $Res call({String confirmationCode});
}

/// @nodoc
class _$ConfirmationCodeChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $ConfirmationCodeChangedCopyWith<$Res> {
  _$ConfirmationCodeChangedCopyWithImpl(ConfirmationCodeChanged _value,
      $Res Function(ConfirmationCodeChanged) _then)
      : super(_value, (v) => _then(v as ConfirmationCodeChanged));

  @override
  ConfirmationCodeChanged get _value => super._value as ConfirmationCodeChanged;

  @override
  $Res call({
    Object? confirmationCode = freezed,
  }) {
    return _then(ConfirmationCodeChanged(
      confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmationCodeChanged implements ConfirmationCodeChanged {
  const _$ConfirmationCodeChanged(this.confirmationCode);

  @override
  final String confirmationCode;

  @override
  String toString() {
    return 'LoginEvent.confirmationCodeChanged(confirmationCode: $confirmationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConfirmationCodeChanged &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmationCode);

  @JsonKey(ignore: true)
  @override
  $ConfirmationCodeChangedCopyWith<ConfirmationCodeChanged> get copyWith =>
      _$ConfirmationCodeChangedCopyWithImpl<ConfirmationCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) numberChanged,
    required TResult Function(String confirmationCode) confirmationCodeChanged,
    required TResult Function() loginPressed,
    required TResult Function() confirmPressed,
  }) {
    return confirmationCodeChanged(confirmationCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
  }) {
    return confirmationCodeChanged?.call(confirmationCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmationCodeChanged != null) {
      return confirmationCodeChanged(confirmationCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChanged value) numberChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return confirmationCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) {
    return confirmationCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmationCodeChanged != null) {
      return confirmationCodeChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmationCodeChanged implements LoginEvent {
  const factory ConfirmationCodeChanged(String confirmationCode) =
      _$ConfirmationCodeChanged;

  String get confirmationCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmationCodeChangedCopyWith<ConfirmationCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPressedCopyWith<$Res> {
  factory $LoginPressedCopyWith(
          LoginPressed value, $Res Function(LoginPressed) then) =
      _$LoginPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginPressedCopyWith<$Res> {
  _$LoginPressedCopyWithImpl(
      LoginPressed _value, $Res Function(LoginPressed) _then)
      : super(_value, (v) => _then(v as LoginPressed));

  @override
  LoginPressed get _value => super._value as LoginPressed;
}

/// @nodoc

class _$LoginPressed implements LoginPressed {
  const _$LoginPressed();

  @override
  String toString() {
    return 'LoginEvent.loginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) numberChanged,
    required TResult Function(String confirmationCode) confirmationCodeChanged,
    required TResult Function() loginPressed,
    required TResult Function() confirmPressed,
  }) {
    return loginPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
  }) {
    return loginPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChanged value) numberChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return loginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) {
    return loginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (loginPressed != null) {
      return loginPressed(this);
    }
    return orElse();
  }
}

abstract class LoginPressed implements LoginEvent {
  const factory LoginPressed() = _$LoginPressed;
}

/// @nodoc
abstract class $ConfirmPressedCopyWith<$Res> {
  factory $ConfirmPressedCopyWith(
          ConfirmPressed value, $Res Function(ConfirmPressed) then) =
      _$ConfirmPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $ConfirmPressedCopyWith<$Res> {
  _$ConfirmPressedCopyWithImpl(
      ConfirmPressed _value, $Res Function(ConfirmPressed) _then)
      : super(_value, (v) => _then(v as ConfirmPressed));

  @override
  ConfirmPressed get _value => super._value as ConfirmPressed;
}

/// @nodoc

class _$ConfirmPressed implements ConfirmPressed {
  const _$ConfirmPressed();

  @override
  String toString() {
    return 'LoginEvent.confirmPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String number) numberChanged,
    required TResult Function(String confirmationCode) confirmationCodeChanged,
    required TResult Function() loginPressed,
    required TResult Function() confirmPressed,
  }) {
    return confirmPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
  }) {
    return confirmPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String number)? numberChanged,
    TResult Function(String confirmationCode)? confirmationCodeChanged,
    TResult Function()? loginPressed,
    TResult Function()? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NumberChanged value) numberChanged,
    required TResult Function(ConfirmationCodeChanged value)
        confirmationCodeChanged,
    required TResult Function(LoginPressed value) loginPressed,
    required TResult Function(ConfirmPressed value) confirmPressed,
  }) {
    return confirmPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
  }) {
    return confirmPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NumberChanged value)? numberChanged,
    TResult Function(ConfirmationCodeChanged value)? confirmationCodeChanged,
    TResult Function(LoginPressed value)? loginPressed,
    TResult Function(ConfirmPressed value)? confirmPressed,
    required TResult orElse(),
  }) {
    if (confirmPressed != null) {
      return confirmPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPressed implements LoginEvent {
  const factory ConfirmPressed() = _$ConfirmPressed;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required bool isSubmitting,
      required String number,
      required String confirmationCode,
      required Option<AuthFailure> authFailure}) {
    return _LoginState(
      isSubmitting: isSubmitting,
      number: number,
      confirmationCode: confirmationCode,
      authFailure: authFailure,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get confirmationCode => throw _privateConstructorUsedError;
  Option<AuthFailure> get authFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      String number,
      String confirmationCode,
      Option<AuthFailure> authFailure});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? number = freezed,
    Object? confirmationCode = freezed,
    Object? authFailure = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as String,
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      String number,
      String confirmationCode,
      Option<AuthFailure> authFailure});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? number = freezed,
    Object? confirmationCode = freezed,
    Object? authFailure = freezed,
  }) {
    return _then(_LoginState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as String,
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.isSubmitting,
      required this.number,
      required this.confirmationCode,
      required this.authFailure});

  @override
  final bool isSubmitting;
  @override
  final String number;
  @override
  final String confirmationCode;
  @override
  final Option<AuthFailure> authFailure;

  @override
  String toString() {
    return 'LoginState(isSubmitting: $isSubmitting, number: $number, confirmationCode: $confirmationCode, authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.confirmationCode, confirmationCode) ||
                const DeepCollectionEquality()
                    .equals(other.confirmationCode, confirmationCode)) &&
            (identical(other.authFailure, authFailure) ||
                const DeepCollectionEquality()
                    .equals(other.authFailure, authFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(confirmationCode) ^
      const DeepCollectionEquality().hash(authFailure);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required bool isSubmitting,
      required String number,
      required String confirmationCode,
      required Option<AuthFailure> authFailure}) = _$_LoginState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  String get number => throw _privateConstructorUsedError;
  @override
  String get confirmationCode => throw _privateConstructorUsedError;
  @override
  Option<AuthFailure> get authFailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
