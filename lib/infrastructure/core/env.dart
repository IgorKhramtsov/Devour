import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVariables {
  static String get clientId =>
      dotenv.env['CLIENT_ID'] ??
      (throw Exception('CLIENT_ID is not defined in environment variables!'));
}
