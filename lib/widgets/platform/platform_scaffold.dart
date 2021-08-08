import 'package:devour/widgets/platform/abstract_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlatformScaffold extends AbstractPlatformWidget<CupertinoPageScaffold, Scaffold> {
  const PlatformScaffold({
    Key? key,
    required this.body,
  }) : super(key: key);

  final Widget body;

  @override
  CupertinoPageScaffold buildCupertino() {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
      ),
      child: body
    );
  }

  @override
  Scaffold buildMaterial() {
    return Scaffold(
      body: body,
    );
  }
}