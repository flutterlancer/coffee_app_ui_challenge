import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension TextThemeExt on TextTheme {
  TextStyle onboardingHeading(BuildContext context) => TextStyle(
        fontSize: 34.sp,
        color: context.theme.whiteColor,
        fontWeight: FontWeight.w600,
      );

  TextStyle onboardingSubtitle(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        color: context.theme.onboardingSecondaryTextColor,
      );

  TextStyle homeLocationHeaderTitle(BuildContext context) => TextStyle(
        fontSize: 12.sp,
        color: context.theme.secondaryTextColor,
      );

  TextStyle homeLocationHeaderSubTitle(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        color: context.theme.whiteColor,
        fontWeight: FontWeight.w600,
      );

  TextStyle homeSearchFieldHintText(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        color: context.theme.secondaryColor,
      );

  TextStyle homePromoCard(BuildContext context) => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        color: context.theme.whiteColor,
      );

  TextStyle promoHeading(BuildContext context) => TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
        color: context.theme.whiteColor,
      );

  TextStyle categoryBar(BuildContext context,
          {FontWeight fontWeight = FontWeight.normal, Color? color}) =>
      TextStyle(
        fontSize: 14.sp,
        fontWeight: fontWeight,
        color: color ?? context.theme.whiteColor,
      );

  TextStyle homeProductGridItemTitle(BuildContext context) => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: context.theme.primaryTextColor,
      );

  TextStyle homeProductGridItemSubTitle(BuildContext context) => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: context.theme.secondaryTextColor,
      );

  TextStyle homeProductGridItemPrice(BuildContext context) => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: context.theme.unselectedCategoryColor,
      );
}
