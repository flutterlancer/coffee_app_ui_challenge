import 'package:coffee_app_ui/core/routes.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/constants/constants.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../widgets/primary_button.dart';

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
            child: Image.asset(context.assets.onboardingBg, fit: BoxFit.cover)
                .animate()
                .fade(duration: const Duration(milliseconds: 500)),
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
                    style: context.theme.textTheme.onboardingHeading(context),
                    textAlign: TextAlign.center,
                  ),
                ).animate(
                  effects: [
                    const FadeEffect(duration: Duration(milliseconds: 500)),
                    const SlideEffect(
                      begin: Offset(0, 0.5),
                      duration: Duration(milliseconds: 500),
                    ),
                  ],
                  autoPlay: true,
                ),
                SizedBox(height: 8.h),
                Center(
                  child: Text(
                    "The best grain, the finest roast, the\npowerful flavor.",
                    style: context.theme.textTheme.onboardingSubtitle(context),
                    textAlign: TextAlign.center,
                  ),
                ).animate(
                  effects: [
                    const FadeEffect(duration: kAnimDuration),
                    const SlideEffect(
                      begin: Offset(0, 0.5),
                      duration: kAnimDuration,
                    ),
                  ],
                  autoPlay: true,
                ),
                SizedBox(height: 24.h),
                PrimaryAppButtonWidget(
                  title: "Get Started",
                  onTap: () => context.push(AppRoutes.home),
                ).animate(
                  effects: [
                    const FadeEffect(duration: kAnimDuration),
                    const SlideEffect(
                      begin: Offset(0, 0.5),
                      duration: kAnimDuration,
                    ),
                  ],
                  autoPlay: true,
                ),
                SizedBox(height: 8.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
