import 'package:devour/widgets/platform/abstract_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlatformApp extends AbstractPlatformWidget<CupertinoApp, MaterialApp> {
  const PlatformApp({
    Key? key,
    required this.title,
    required this.home,
    this.primaryColor,
  }) : super(key: key);

  final String title;
  final Widget home;
  final Color? primaryColor;

  @override
  CupertinoApp buildCupertino() {
    return CupertinoApp(
      title: title,
      home: home,
      theme: CupertinoThemeData(
        primaryColor: primaryColor,
      ),
    );
  }

  @override
  MaterialApp buildMaterial() {
    return MaterialApp(
      title: title,
      home: home,
      theme: ThemeData(
        primaryColor: primaryColor,
      )
    );
  }
}