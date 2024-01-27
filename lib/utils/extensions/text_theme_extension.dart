import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextThemeExt on TextTheme {
  TextStyle largeHeading(BuildContext context) => TextStyle(
        fontSize: 34.sp,
        color: context.theme.whiteColor,
        fontWeight: FontWeight.w600,
      );

  TextStyle mediumHeading(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        color: context.theme.onboardingSecondaryTextColor,
      );
}
