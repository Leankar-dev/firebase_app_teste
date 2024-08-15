import 'package:firebase_app_teste/pages/home/home_page.dart';
import 'package:firebase_app_teste/pages/onboarding/onboarding_page.dart';
import 'package:firebase_app_teste/pages/sign_in/sign_in_page.dart';
import 'package:firebase_app_teste/pages/sign_up/sign_up_page.dart';
import 'package:firebase_app_teste/pages/splash/splash_page.dart';
import 'package:firebase_app_teste/shared/constants/firebase_app_colors.dart';
import 'package:firebase_app_teste/shared/constants/get_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Auth',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: FirebaseAppColors.primaryColor),
        useMaterial3: true,
      ),
      getPages: [
        GetPage(
          name: GetRoutes.initial,
          page: () => const SplashPage(),
        ),
        GetPage(
          name: GetRoutes.onboardingPage,
          page: () => const OnboardingPage(),
        ),
        GetPage(
          name: GetRoutes.signUpPage,
          page: () => const SignUpPage(),
        ),
        GetPage(
          name: GetRoutes.signInPage,
          page: () => const SignInPage(),
        ),
        GetPage(
          name: GetRoutes.homePage,
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
