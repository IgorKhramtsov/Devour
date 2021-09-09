import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

const kRedditDioName = 'redditDio';

@module
abstract class RegisterModule {
  @Named(kRedditDioName)
  @Singleton()
  Dio getRedditDio() => Dio()..options.headers['User-Agent'] = 'Devour/0.0.1';
}
