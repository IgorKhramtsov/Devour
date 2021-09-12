import 'package:devour/presentation/widgets/platform/abstract_platform_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlatformButton
    extends AbstractPlatformWidget<CupertinoButton, ElevatedButton> {
  const PlatformButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onPressed;

  @override
  CupertinoButton buildCupertino(BuildContext context) {
    return CupertinoButton.filled(onPressed: onPressed, child: child);
  }

  @override
  ElevatedButton buildMaterial(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
