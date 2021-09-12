import 'package:devour/application/navigator/app_navigator.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/widgets/platform/abstract_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Platform dependent app widget (CupertinoApp for iOS, MaterialApp for android)
class PlatformApp extends AbstractPlatformWidget<CupertinoApp, MaterialApp> {
  /// Platform dependent app widget (CupertinoApp for iOS, MaterialApp for android)
  const PlatformApp({
    Key? key,
    required this.title,
    this.primaryColor,
  }) : super(key: key);

  final String title;
  final Color? primaryColor;

  @override
  CupertinoApp buildCupertino(BuildContext context) {
    return CupertinoApp(
      title: title,
      onGenerateRoute: serviceLocator<AppNavigator>().navigate,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
    );
  }

  @override
  MaterialApp buildMaterial(BuildContext context) {
    return MaterialApp(
      title: title,
      onGenerateRoute: serviceLocator<AppNavigator>().navigate,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: primaryColor,
      ),
    );
  }
}
