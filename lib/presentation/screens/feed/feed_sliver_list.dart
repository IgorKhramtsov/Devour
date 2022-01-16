import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// [SliverList] with bluring and fading of non-center elements based of how far they are.
class FeedSliverList extends SliverList {
  /// [SliverList] with bluring and fading of non-center elements based of how far they are.
  const FeedSliverList({
    Key? key,
    required SliverChildDelegate delegate,
    this.listener,
  }) : super(key: key, delegate: delegate);
  final CurrentElementListener? listener;

  @override
  SliverMultiBoxAdaptorElement createElement() =>
      SliverMultiBoxAdaptorElement(this, replaceMovedChildren: true);

  @override
  RenderSliverList createRenderObject(BuildContext context) {
    final SliverMultiBoxAdaptorElement element =
        context as SliverMultiBoxAdaptorElement;
    return RenderFeedSliverList(childManager: element, listener: listener);
  }
}

// ignore: public_member_api_docs
class RenderFeedSliverList extends RenderSliverList {
  // ignore: public_member_api_docs
  RenderFeedSliverList({
    required RenderSliverBoxChildManager childManager,
    this.listener,
  }) : super(childManager: childManager);

  final CurrentElementListener? listener;

  /// Calculating how far is center of element from center of viewport in percents (0.0 - 1.0).
  double getDistanceToViewportCenter(RenderBox child) {
    final viewportCenter = constraints.viewportMainAxisExtent / 2.0;

    final double mainAxisDelta = childMainAxisPosition(child);
    final childCenter = mainAxisDelta + (paintExtentOf(child) / 2.0);
    return (viewportCenter - childCenter).abs() /
        constraints.viewportMainAxisExtent;
  }

  @override
  void performLayout() {
    super.performLayout();
    if (firstChild == null) return;

    var minDistanceChild = firstChild!;
    RenderBox? child = childAfter(minDistanceChild);
    while (child != null) {
      final distance = getDistanceToViewportCenter(child);
      if (distance < getDistanceToViewportCenter(minDistanceChild)) {
        minDistanceChild = child;
      } else {
        break; // If we start having larger number - we cant get minimal distance anymore.
      }

      child = childAfter(child);
    }
    final minDistanceChildIndex = indexOf(minDistanceChild);

    listener?.currentIndex.value = minDistanceChildIndex;
  }

  /// Copy of original function with bluring side elements.
  @override
  void paint(PaintingContext context, Offset offset) {
    if (firstChild == null) return;
    // offset is to the top-left corner, regardless of our axis direction.
    // originOffset gives us the delta from the real origin to the origin in the axis direction.
    final Offset mainAxisUnit, crossAxisUnit, originOffset;
    final bool addExtent;
    switch (applyGrowthDirectionToAxisDirection(
        constraints.axisDirection, constraints.growthDirection)) {
      case AxisDirection.up:
        mainAxisUnit = const Offset(0.0, -1.0);
        crossAxisUnit = const Offset(1.0, 0.0);
        originOffset = offset + Offset(0.0, geometry!.paintExtent);
        addExtent = true;
        break;
      case AxisDirection.right:
        mainAxisUnit = const Offset(1.0, 0.0);
        crossAxisUnit = const Offset(0.0, 1.0);
        originOffset = offset;
        addExtent = false;
        break;
      case AxisDirection.down:
        mainAxisUnit = const Offset(0.0, 1.0);
        crossAxisUnit = const Offset(1.0, 0.0);
        originOffset = offset;
        addExtent = false;
        break;
      case AxisDirection.left:
        mainAxisUnit = const Offset(-1.0, 0.0);
        crossAxisUnit = const Offset(0.0, 1.0);
        originOffset = offset + Offset(geometry!.paintExtent, 0.0);
        addExtent = true;
        break;
    }
    RenderBox? child = firstChild;
    while (child != null) {
      final double mainAxisDelta = childMainAxisPosition(child);
      final double crossAxisDelta = childCrossAxisPosition(child);
      Offset childOffset = Offset(
        originOffset.dx +
            mainAxisUnit.dx * mainAxisDelta +
            crossAxisUnit.dx * crossAxisDelta,
        originOffset.dy +
            mainAxisUnit.dy * mainAxisDelta +
            crossAxisUnit.dy * crossAxisDelta,
      );
      if (addExtent) childOffset += mainAxisUnit * paintExtentOf(child);

      // If the child's visible interval (mainAxisDelta, mainAxisDelta + paintExtentOf(child))
      // does not intersect the paint extent interval (0, constraints.remainingPaintExtent), it's hidden.
      if (mainAxisDelta < constraints.remainingPaintExtent &&
          mainAxisDelta + paintExtentOf(child) > 0) {
        var fadeStrength = getDistanceToViewportCenter(child);
        // Special non-linear function, to blur faster
        fadeStrength =
            (pow(fadeStrength + 0.4, 4.0) + pow(fadeStrength, 2.0)).toDouble();

        // ImageFilter with blur and blackout effect
        final filter = ImageFilter.compose(
          outer: ImageFilter.blur(
            sigmaX: 6.0 * fadeStrength,
            sigmaY: 6.0 * fadeStrength,
          ),
          inner: ColorFilter.mode(
            Colors.black.withOpacity(
              max(min(1.0, .45 * fadeStrength), 0.0), // bound to 0.0 - 1.0
            ),
            BlendMode.darken,
          ),
        );

        // ClipRect is required to prevent blur from being applied to entire screen
        context.pushClipRect(
          needsCompositing,
          childOffset,
          Rect.fromLTWH(0, 0, child.size.width, child.size.height),
          (context, offset) {
            context.pushLayer(
              ImageFilterLayer(imageFilter: filter),
              (context, o) {
                context.paintChild(child!, o);
              },
              offset,
            );
          },
        );
      }

      child = childAfter(child);
    }
  }
}

class CurrentElementListener {
  final ValueNotifier<int> currentIndex = ValueNotifier(0);
}
