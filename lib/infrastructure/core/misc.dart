import 'dart:convert';
import 'dart:math';

const _kCharSamples =
    '1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
String getRandomString(int len) {
  final r = Random();
  return List<String>.generate(
      len, (index) => _kCharSamples[r.nextInt(_kCharSamples.length)]).join();
}

/// Return Type of T
Type typeOf<T>() => T;

String getBasicCredentials(String username, String password) =>
    'Basic ${base64Encode(utf8.encode('$username:$password'))}';
