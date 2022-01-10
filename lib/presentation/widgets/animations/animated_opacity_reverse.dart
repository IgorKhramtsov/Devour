import 'package:flutter/material.dart';

/// Like [AnimatedOpacity], but with control over [reversedDuration]
class AnimatedVisibilityWithReversedDuration extends StatefulWidget {
  /// Constructs AnimatedVisibilityWithReversedDuration
  const AnimatedVisibilityWithReversedDuration({
    Key? key,
    required this.duration,
    required this.visibility,
    required this.child,
    Duration? reversedDuration,
  })  : reversedDuration = reversedDuration ?? duration,
        super(key: key);

  final Duration duration;
  /// Reversed duration. If null - [duration] will be used
  final Duration reversedDuration;
  final bool visibility;
  final Widget child;

  @override
  State<AnimatedVisibilityWithReversedDuration> createState() =>
      _AnimatedVisibilityWithReversedDurationState();
}

class _AnimatedVisibilityWithReversedDurationState
    extends State<AnimatedVisibilityWithReversedDuration>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.reversedDuration,
      reverseDuration: widget.duration,
      value: 1.0,
    );
  }

  @override
  void didUpdateWidget(
    covariant AnimatedVisibilityWithReversedDuration oldWidget,
  ) {
    if (oldWidget.visibility != widget.visibility) {
      if (widget.visibility) {
        controller.forward();
      } else {
        controller.reverse();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: controller,
        child: widget.child,
        builder: (context, child) {
          return Opacity(
            opacity: controller.value,
            child: child,
          );
        },
      );
}
