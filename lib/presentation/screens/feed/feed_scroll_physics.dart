import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter/physics.dart';

/// Extension for getting position from GlobalKey
extension PositionRetriever on GlobalKey<State<StatefulWidget>> {
  /// Return position of rendered widget
  Offset? getPosition() {
    try {
      final box = currentContext?.findRenderObject() as RenderBox?;
      return box?.localToGlobal(Offset.zero);
    } catch (_) {
      return null;
    }
  }

  Size? getSize() {
    try {
      return currentContext?.size;
    } catch (_) {
      return null;
    }
  }
}

class FeedScrollPhysics extends ScrollPhysics {
  FeedScrollPhysics(this.elementsSizes, {ScrollPhysics? parent})
      : super(parent: parent);

  Map<int, Size> elementsSizes;

  @override
  FeedScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return FeedScrollPhysics(elementsSizes, parent: buildParent(ancestor));
  }

  double _getElement(ScrollMetrics position) {
    final viewportHeight = position.viewportDimension;
    // Target position
    final viewportCenter = position.pixels + (viewportHeight / 2.0);

    double sum = 0.0;
    double elementCenter = 0.0;
    int elementIndex = 0;
    for (int i = 0; i < elementsSizes.length; i++) {
      final height = elementsSizes[i]!.height;

      final nextElementCenter = sum + (height / 2);
      if ((viewportCenter - nextElementCenter).abs() <
          (viewportCenter - elementCenter).abs()) {
        elementCenter = nextElementCenter;
        sum += height;
        elementIndex = i;
      } else {
        break;
      }
    }

    final itemHeight = elementsSizes[elementIndex]!.height;
    final itemOffset = sum - itemHeight;
    final relativePos = viewportCenter - itemOffset;
    return elementIndex + ((relativePos / itemHeight) - 0.5);
  }

  double _getPixels(ScrollMetrics position, int elementIndex) {
    final viewportCenter = position.viewportDimension / 2.0;

    double sum = 0;
    for (int i = 0; i < elementIndex; i++) {
      sum += elementsSizes[i]!.height;
    }
    final elementCenter = sum + (elementsSizes[elementIndex]!.height / 2.0);

    return elementCenter - viewportCenter;
  }

  double _getTargetPixels(
    ScrollMetrics position,
    Tolerance tolerance,
    double velocity,
  ) {
    double page = _getElement(position);
    if (velocity < -tolerance.velocity) {
      page -= 0.4;
    } else if (velocity > tolerance.velocity) {
      page += 0.4;
    }
    return _getPixels(position, page.round());
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at a page boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }
    final Tolerance tolerance = this.tolerance;
    final double target = _getTargetPixels(position, tolerance, velocity);
    if (target != position.pixels) {
      return ScrollSpringSimulation(
        SpringDescription.withDampingRatio(
          mass: 0.5,
          stiffness: 100.0,
          ratio: 1.1,
        ),
        position.pixels,
        target,
        velocity,
        tolerance: tolerance,
      );
    }
    return null;
  }
}
