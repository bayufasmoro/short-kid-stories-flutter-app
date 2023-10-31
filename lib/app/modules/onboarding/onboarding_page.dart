import 'package:flutter/material.dart';
import 'package:short_kid_stories/app/core/res/app_colors.dart';
import 'package:short_kid_stories/app/modules/onboarding/widgets/onboarding_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [Colors.white, AppColors.illusBlue],
          ),
          // boxShadow: [AppViewStyles.elevationRaised],
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: const CustomScrollView(slivers: [
          SliverFillRemaining(hasScrollBody: false, child: OnboardingWidget())
        ],),
      ),
    );
  }
}
