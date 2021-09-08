import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  Dio getDio() => Dio()..options.headers['User-Agent'] = 'Devour/0.0.1';
}
