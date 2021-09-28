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
  FeedScrollPhysics(this.elementsKeys, {ScrollPhysics? parent})
      : super(parent: parent);

  Map<int, GlobalKey<State<StatefulWidget>>> elementsKeys;
  final Map<int, double?> elementsHeights = <int, double>{};

  @override
  FeedScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return FeedScrollPhysics(elementsKeys, parent: buildParent(ancestor));
  }

  double _getElement(ScrollMetrics position) {
    for (int i = 0; i < elementsKeys.length; i++) {
      final height = elementsKeys[i]?.getSize()?.height;
      if (height != null) {
        elementsHeights[i] = height;
      }
    }
    final viewportHeight = position.viewportDimension;
    // Target position
    final viewportCenter = position.pixels + (viewportHeight / 2.0);

    double sum = 0.0;
    double elementCenter = 0.0;
    int elementIndex = 0;
    for (int i = 0; i < elementsHeights.length; i++) {
      final height = elementsHeights[i]!;

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

    final itemHeight = elementsHeights[elementIndex]!;
    final itemOffset = sum - itemHeight;
    final relativePos = viewportCenter - itemOffset;
    return elementIndex + ((relativePos / itemHeight) - 0.5);
  }

  double _getPixels(ScrollMetrics position, int elementIndex) {
    final viewportCenter = position.viewportDimension / 2.0;

    double sum = 0;
    for (int i = 0; i < elementIndex; i++) {
      sum += elementsHeights[i]!;
    }
    final elementCenter = sum + (elementsHeights[elementIndex]! / 2.0);

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
