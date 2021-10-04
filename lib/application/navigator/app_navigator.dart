import 'dart:io';

import 'package:devour/application/navigator/routes.dart';
import 'package:devour/presentation/screens/accounts/accounts_screen.dart';
import 'package:devour/presentation/screens/feed/feed_screen.dart';
import 'package:devour/presentation/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
    // For some reason, after redirect reddit sometime adds this to end of path
    if (name.endsWith('#_')) {
      name = name.substring(0, name.length - 2);
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
        return (BuildContext ctx) => HomeScreen(
              selectedPage: HomePage.accounts,
              args: settings.arguments! as RouteArguments,
            );
      default:
        return (BuildContext ctx) => const HomeScreen();
    }
  }

  String _getTitle(RouteSettings settings) => 'Title';

  /// Opens passed authorization [link] in browser. For debug build it will open
  /// Safari browser, to help with debugging, in release mode it will open viewController,
  /// because of Apple guidlines
  static Future<void> openAuthLink(String link) =>
      openLink(link, forceSafariVC: kReleaseMode ? true : false);

  static Future<void> openLink(String link, {bool forceSafariVC = false}) =>
      launch(link, forceSafariVC: forceSafariVC);
}
