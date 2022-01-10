import 'package:devour/presentation/widgets/platform/platform_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:octo_image/octo_image.dart';

/// A widget to show image from network or cache with correct size
class FeedImage extends StatelessWidget {
  /// Construct FeedImag
  const FeedImage({
    Key? key,
    this.constraints,
    required this.imageProvider,
    this.onRefreshPressed,
  }) : super(key: key);

  final BoxConstraints? constraints;
  final ImageProvider imageProvider;
  /// Callback fired, when user taps on error builder, when image is failed to load
  final VoidCallback? onRefreshPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 200,
        maxWidth: constraints?.maxWidth ?? double.infinity,
      ),
      child: OctoImage(
        // key: widget.key,
        image: imageProvider,
        fit: BoxFit.fitWidth,
        progressIndicatorBuilder: (ctx, prgrs) => SizedBox(
          height: 200,
          child: Lottie.asset(
            'lib/assets/animations/space_loader.json',
          ),
        ),
        errorBuilder: (ctx, error, stack) => SizedBox(
          height: 200,
          child: Center(
            child: PlatformIconButton(
              icon: Icons.refresh,
              onPressed: onRefreshPressed,
              color: CupertinoColors.white,
              size: 24,
              text: 'failed to load 🤬',
            ),
          ),
        ),
      ),
    );
  }
}
