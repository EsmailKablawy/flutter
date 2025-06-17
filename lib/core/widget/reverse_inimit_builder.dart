import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ReverseInimitBuilder extends StatelessWidget {
  final Widget child;
  final int columnCount, position, totalCount;

  const ReverseInimitBuilder({
    super.key,
    required this.child,
    required this.columnCount,
    required this.position,
    required this.totalCount,
  });

  @override
  Widget build(BuildContext context) {
    // Reverse the position to animate from last to first
    final reversedPosition = totalCount - 1 - position;

    return AnimationConfiguration.staggeredGrid(
      columnCount: columnCount,
      position: reversedPosition, // Reverse the position here
      duration: const Duration(milliseconds: 375),
      child: ScaleAnimation(
          child: child), // You can change this animation type if needed
    );
  }
}
