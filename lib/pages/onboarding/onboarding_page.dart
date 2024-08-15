import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_text_styles.dart';
import 'package:firebase_app_teste/shared/constants/get_routes.dart';
import 'package:firebase_app_teste/shared/widgets/multi_text_buttom.dart';
import 'package:firebase_app_teste/shared/widgets/primary_buttom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: FirebaseAppColors.iceWhite,
                child: Container(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Image.asset('assets/images/paisagem.jpg'),
                  ),
                ),
              ),
            ),
            const Text(
              'OnBoarding Page',
              style: FirebaseAppTextStyles.mediumText36,
            ),
            const SizedBox(
               height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: PrimaryButtom(
                text: 'Get Started',
                onPressed: () {
                  Get.toNamed(GetRoutes.signUpPage);
                },
              ),
            ),
            const SizedBox(
               height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Allready have account?'),
                MultiTextButton(
                  onPressed: () {
                    Get.toNamed(GetRoutes.signInPage);
                  },
                  text: 'Log In',
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
