import 'dart:math';

const _kCharSamples =
    '1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM';
String getRandomString(int len) {
  final r = Random();
  return List<String>.generate(
      len, (index) => _kCharSamples[r.nextInt(_kCharSamples.length)]).join();
}
