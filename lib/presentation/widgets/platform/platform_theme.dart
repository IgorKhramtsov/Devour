import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlatformTheme {
  static TextStyle getTextStyle(BuildContext context) {
    if (Platform.isAndroid) {
      return Theme.of(context).textTheme.bodyText2!;
    } else {
      return CupertinoTheme.of(context).textTheme.textStyle;
    }
  }
}
