import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomRaisedButton(
      {required this.child, required this.color, required this.onPressed});

  final Widget child;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: color,
      ),
      child: child,
    );
  }
}
