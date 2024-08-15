import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_text_styles.dart';
import 'package:flutter/material.dart';

class MultiTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const MultiTextButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: FirebaseAppTextStyles.smallText
            .copyWith(color: FirebaseAppColors.secondaryColor),
      ),
    );
  }
}
