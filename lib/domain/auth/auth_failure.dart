
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  factory AuthFailure.invalidNumber() = InvalidNumber;
  factory AuthFailure.userNotFound() = UserNotFound;
}