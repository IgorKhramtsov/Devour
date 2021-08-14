import 'dart:async';

import 'package:devour/domain/auth/auth_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthFacade {
  Future<Option<AuthFailure>> auth(String number);
  Future<Option<AuthFailure>> confirm(String confirmationCode);
}
