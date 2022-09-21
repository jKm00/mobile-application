import 'package:flutter/material.dart';
import 'package:time_tracker_app/components/buttons/custom_raised_button.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton({
    Key? key,
    required String text,
    VoidCallback? onPressed,
    Color? color,
    Color? textColor,
  }) : super(
          key: key,
          color: color,
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15.0,
            ),
          ),
        );
}
