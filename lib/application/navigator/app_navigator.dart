import 'dart:io';

import 'package:devour/presentation/screens/telegram_login/telegram_login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class AppNavigator {
  Route<dynamic> navigate(RouteSettings settings) {
    if (Platform.isAndroid) {
      return MaterialPageRoute(builder: _builder(settings), settings: settings);
    } else {
      return CupertinoPageRoute(
        builder: _builder(settings),
        settings: settings,
        title: getTitle(settings),
      );
    }
  }

  Widget Function(BuildContext) _builder(RouteSettings settings) =>
      (BuildContext ctx) {
        return TelegramLoginScreen();
      };

  String getTitle(RouteSettings settings) => 'Title';
}
