part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isSubmitting,
    required String number,
    required String confirmationCode,
    required Option<AuthFailure> authFailure,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        isSubmitting: false,
        number: '',
        confirmationCode: '',
        authFailure: Option.none(),
      );
}
