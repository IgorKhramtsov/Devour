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
    this.padding = EdgeInsets.zero,
    this.filled = true,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsets padding;
  final bool filled;

  @override
  CupertinoButton buildCupertino(BuildContext context) {
    if (filled) {
      return CupertinoButton.filled(
        onPressed: onPressed,
        padding: padding,
        child: child,
      );
    } else {
      return CupertinoButton(
        onPressed: onPressed,
        padding: padding,
        child: child,
      );
    }
  }

  @override
  ElevatedButton buildMaterial(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}
