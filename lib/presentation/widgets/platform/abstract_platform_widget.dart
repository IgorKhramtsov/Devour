import 'dart:io';

import 'package:flutter/widgets.dart';

/// Class for implementing platform-aware interface
class AbstractPlatformWidget<C extends Widget, M extends Widget>
    extends StatelessWidget {
  const AbstractPlatformWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return buildMaterial(context);
    } else {
      return buildCupertino(context);
    }
  }

  C buildCupertino(BuildContext context) => throw UnimplementedError();

  M buildMaterial(BuildContext context) => throw UnimplementedError();
}
