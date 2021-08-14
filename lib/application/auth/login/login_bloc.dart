import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:devour/domain/auth/auth_failure.dart';
import 'package:devour/domain/auth/i_auth_facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;
  LoginBloc(this._authFacade) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    event.map(
      numberChanged: (e) async* {
        yield state.copyWith(number: e.number);
      },
      confirmationCodeChanged: (e) async* {
        yield state.copyWith(confirmationCode: e.confirmationCode);
      },
      loginPressed: (e) async* {
        yield* performActionWithResult(
          _authFacade.auth,
          state.number,
        );
      },
      confirmPressed: (e) async* {
        yield* performActionWithResult(
          _authFacade.confirm,
          state.confirmationCode,
        );
      },
    );
  }

  Stream<LoginState> performActionWithResult(
      Future<Option<AuthFailure>> Function(String argument) action,
      String argument) async* {
    yield state.copyWith(isSubmitting: true, authFailure: Option.none());
    final result = await action(argument);
    yield state.copyWith(isSubmitting: false, authFailure: result);
  }
}
