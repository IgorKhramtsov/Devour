import 'package:devour/application/navigator/app_navigator.dart';
import 'package:devour/injection.dart';
import 'package:devour/presentation/widgets/platform/abstract_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlatformApp extends AbstractPlatformWidget<CupertinoApp, MaterialApp> {
  const PlatformApp({
    Key? key,
    required this.title,
    this.primaryColor,
  }) : super(key: key);

  final String title;
  final Color? primaryColor;

  @override
  CupertinoApp buildCupertino() {
    return CupertinoApp(
      title: title,
      onGenerateRoute: serviceLocator<AppNavigator>().navigate,
      theme: CupertinoThemeData(
        primaryColor: primaryColor,
      ),
    );
  }

  @override
  MaterialApp buildMaterial() {
    return MaterialApp(
        title: title,
        onGenerateRoute: serviceLocator<AppNavigator>().navigate,
        theme: ThemeData(
          primaryColor: primaryColor,
        ));
  }
}
