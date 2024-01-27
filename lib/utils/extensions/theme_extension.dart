import 'package:flutter/material.dart';

extension CustomTheme on ThemeData {
  Color get primaryColor => const Color(0xffC67C4E);

  Color get blackColor => const Color(0xff000000);

  Color get secondaryColor => const Color(0xff808080);

  Color get scaffoldBackgroundColor => whiteColor;

  Color get whiteColor => Colors.white;

  LinearGradient get homeTopBarGradient => const LinearGradient(
        colors: [Color(0xff131313), Color(0xff313131)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  LinearGradient get onboardingGradient => LinearGradient(
        colors: [blackColor.withOpacity(0), blackColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  LinearGradient get bottomNavbaritemGradient => const LinearGradient(
        colors: [Color(0xffC67C4E), Color(0xffEDAB81)],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      );

  Color get primaryTextColor => const Color(0xff2F2D2C);

  Color get secondaryTextColor => const Color(0xff9B9B9B);

  Color get mapPagebarColor => const Color(0xff36C07E);

  Color get homePromoBarColor => const Color(0xffED5151);

  Color get onboardingSecondaryTextColor => const Color(0xffa9a9a9);
}
