import 'package:devour/presentation/widgets/platform/abstract_platform_widget.dart';
import 'package:devour/presentation/widgets/platform/platform_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformIconButton
    extends AbstractPlatformWidget<CupertinoButton, IconButton> {
  PlatformIconButton({
    required this.icon,
    required this.size,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  final IconData icon;
  final double size;
  final Color color;
  final String text;
  final VoidCallback? onPressed;

  @override
  CupertinoButton buildCupertino(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      child: _buildContent(context),
    );
  }

  @override
  IconButton buildMaterial(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      iconSize: size * 1.75, // approximately
      icon: _buildContent(context),
      onPressed: onPressed,
    );
  }

  Widget _buildContent(BuildContext context) {
    final textStyle = PlatformTheme.getTextStyle(context)
        // .actionTextStyle
        .copyWith(color: color);
    const List<Shadow> shadows = [
      Shadow(
        color: Colors.black12,
        offset: Offset(0, 1),
        blurRadius: 1.0,
      ),
      Shadow(
        color: Colors.black26,
        blurRadius: 20.0,
      )
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          String.fromCharCode(icon.codePoint),
          style: TextStyle(
            fontSize: size,
            color: color,
            fontFamily: icon.fontFamily,
            package: icon.fontPackage,
            shadows: shadows,
          ),
        ),
        Text(
          text,
          style: textStyle.copyWith(shadows: shadows),
        ),
      ],
    );
  }
}
