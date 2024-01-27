import 'package:coffee_app_ui/features/onboarding/widgets/primary_button.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.blackColor,
      body: Stack(
        children: [
          SizedBox(
            width: 1.sw,
            height: 536.h,
            child: Image.asset(context.assets.onboardingBg, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                gradient: context.theme.onboardingGradient,
              ),
              width: 1.sw,
              height: 362.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Coffee so good,\nyour taste buds\nwill love it.",
                    style: context.theme.textTheme.largeHeading(context),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 8.h),
                Center(
                  child: Text(
                    "The best grain, the finest roast, the\npowerful flavor.",
                    style: context.theme.textTheme.mediumHeading(context),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 24.h),
                const PrimaryAppButtonWidget(title: "Get Started"),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
