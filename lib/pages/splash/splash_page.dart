import 'dart:async';

import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_text_styles.dart';
import 'package:firebase_app_teste/shared/constants/get_routes.dart';
import 'package:firebase_app_teste/shared/widgets/custom_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Timer init() {
    return Timer(
      const Duration(seconds: 4),
      getNavigateToOnboarding,
    );
  }

  void getNavigateToOnboarding() {
    Get.offNamed(GetRoutes.onboardingPage);
  }

  @override
  Widget build(BuildContext context) {
    const title = 'Splash Page';
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              FirebaseAppColors.secondaryColor,
              FirebaseAppColors.primaryColor,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: FirebaseAppTextStyles.bigText.copyWith(
                color: FirebaseAppColors.terciaryColor,
              ),
            ),
            const SizedBox(height: 20),
            const CustomCircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
