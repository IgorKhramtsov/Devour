import 'dart:io';

import 'package:devour/application/navigator/routes.dart';
import 'package:devour/presentation/screens/accounts/accounts_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class AppNavigator {
  Route<dynamic> navigate(RouteSettings settings) {
    settings = _processSettings(settings);
    if (Platform.isAndroid) {
      return MaterialPageRoute(builder: _builder(settings), settings: settings);
    } else {
      return CupertinoPageRoute(
        builder: _builder(settings),
        settings: settings,
        title: _getTitle(settings),
      );
    }
  }

  RouteSettings _processSettings(RouteSettings settings) {
    if (settings.name == null) {
      throw Exception('Route name undefined');
    }
    String name = settings.name!;
    // This may happen, if app was closed, and opened by link
    name = name.replaceAll('ignored/', '');
    // Remove first '/' if exist
    if (name.startsWith('/')) {
      name = name.substring(1);
    }

    dynamic arguments;
    // If deeplink with parameters
    if (name.contains('?')) {
      if (name.startsWith(Routes.reddit_auth_redirect)) {
        arguments = RedditRedirectArguments.fromUri(name);
        name = name.split('?').first;
      } else {
        arguments = settings.arguments;
      }
    }

    return settings.copyWith(name: name, arguments: arguments);
  }

  Widget Function(BuildContext) _builder(RouteSettings settings) {
    switch (settings.name) {
      case Routes.reddit_auth_redirect:
        return (BuildContext ctx) => AccountScreen(
            redirectArguments: settings.arguments! as RedditRedirectArguments);
      default:
        return (BuildContext ctx) => AccountScreen();
    }
  }

  String _getTitle(RouteSettings settings) => 'Title';

  /// Opens passed [link] in browser. Pass true to [forceSafariVC], to open link in
  /// view controller (ios only).
  static Future<void> openLink(String link, {bool forceSafariVC = false}) =>
      launch(link, forceSafariVC: forceSafariVC);
}
