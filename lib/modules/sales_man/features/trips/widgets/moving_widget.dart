import 'package:flutter/material.dart';

class MovingWidget extends StatefulWidget {
  const MovingWidget({super.key, required this.child});
  final Widget child;
  @override
  State<MovingWidget> createState() => _MovingWidgetState();
}

class _MovingWidgetState extends State<MovingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final double movementDistance = 5.0; // Set the exact pixel movement here

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(movementDistance * _controller.value, 0),
          child: Center(child: widget.child),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
