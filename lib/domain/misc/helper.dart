String convertToShortString(int value) {
  if (value < 1000) {
    return value.toString();
  } else {
    final thousands = (value / 1000.0).toString();
    final splitted = thousands.split('.');
    final withFirstFraction =
        '${splitted.first}.${splitted[1].substring(0, 1)}';
    return '${withFirstFraction}K';
  }
}

/// int helpers
extension IntX on int {
  /// Converts number to string like `43.3K`, if its greater than 1000, otherwise
  /// return just toString().
  String toShortString() => convertToShortString(this);
}
