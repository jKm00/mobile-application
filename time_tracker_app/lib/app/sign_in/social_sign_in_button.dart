import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_raised_button.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton({
    Key? key,
    required String text,
    required String imagePath,
    VoidCallback? onPressed,
    Color? color,
    Color? textColor,
  }) : super(
          key: key,
          color: color,
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset(imagePath),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.0,
                ),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(imagePath),
              ),
            ],
          ),
        );
}
