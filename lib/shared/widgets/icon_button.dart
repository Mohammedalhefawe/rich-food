import 'package:flutter/material.dart';

import '../styles/colors.dart';

class BarIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const BarIconButton({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: primary,
        size: 24,
      ),
    );
  }
}
