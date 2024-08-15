import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: FirebaseAppColors.whiteColor,
      ),
    );
  }
}
