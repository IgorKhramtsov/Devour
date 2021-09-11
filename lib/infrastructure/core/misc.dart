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

class _IsSubtypeHelper<T> {}

// T<S> is not T, so use this helper to check subtypes
bool isSubtype<T, S>() => _IsSubtypeHelper<T>() is _IsSubtypeHelper<S>;

String getBasicCredentials(String username, String password) =>
    'Basic ${base64Encode(utf8.encode('$username:$password'))}';
