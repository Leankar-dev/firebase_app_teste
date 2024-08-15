import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_text_styles.dart';
import 'package:flutter/material.dart';

class PrimaryButtom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButtom({
    super.key,
    this.onPressed,
    required this.text,
  });

  final BorderRadius _borderRadius = const BorderRadius.all(
    Radius.circular(25),
  );

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: onPressed != null
                ? FirebaseAppColors.blueyGradient
                : FirebaseAppColors.blackGradient,
          ),
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: onPressed,
          child: Align(
            child: Text(
              text,
              style: FirebaseAppTextStyles.mediumText18
                  .copyWith(color: FirebaseAppColors.whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
