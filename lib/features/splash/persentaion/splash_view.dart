import 'package:flutter/material.dart';
import 'package:nectarappmvvm/constants.dart';
import 'package:nectarappmvvm/core/utils/images.dart';
import 'package:nectarappmvvm/features/onboarding/persentation/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => OnboardingView()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Image.asset(
            Images.splashImageLogo,
          ),
        ),
      ),
    );
  }
}
