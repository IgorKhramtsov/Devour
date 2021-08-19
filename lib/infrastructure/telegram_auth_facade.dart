import 'package:devour/domain/auth/auth_failure.dart';
import 'package:devour/domain/auth/i_auth_facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

/// TODO
@Injectable(as: IAuthFacade)
class TelegramAuthFacade implements IAuthFacade {
  @override
  Future<Option<AuthFailure>> auth(String number) {
    throw UnimplementedError();
  }

  @override
  Future<Option<AuthFailure>> confirm(String confirmationCode) {
    throw UnimplementedError();
  }
}
