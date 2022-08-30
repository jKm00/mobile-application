import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomRaisedButton({
    Key? key,
    this.onPressed,
    this.child,
    this.color,
    this.height = 50.0,
    this.borderRadius = 5.0,
  });

  final Widget? child;
  final Color? color;
  final double height;
  final double borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            ),
          ),
          child: child,
        ));
  }
}
