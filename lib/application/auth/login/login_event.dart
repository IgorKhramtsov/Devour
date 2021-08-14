part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.numberChanged(String number) = NumberChanged;
  const factory LoginEvent.confirmationCodeChanged(String confirmationCode) =
      ConfirmationCodeChanged;
  const factory LoginEvent.loginPressed() = LoginPressed;
  const factory LoginEvent.confirmPressed() = ConfirmPressed;
}
