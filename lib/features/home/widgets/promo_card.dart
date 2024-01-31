import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/constants/constants.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoCardWidget extends StatelessWidget {
  const PromoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 24.h, right: 30.w, left: 30.w),
      child: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 140.h,
            decoration: BoxDecoration(
              color: context.theme.secondaryColor,
              borderRadius: BorderRadius.circular(16.r),
              image: DecorationImage(
                image: AssetImage(context.assets.homePromoImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 24.w,
            top: 12.h,
            child: Container(
              height: 26.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: context.theme.homePromoBarColor,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Center(
                child: Text(
                  "Promo",
                  style: context.theme.textTheme.homePromoCard(context),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                "Buy one get\none FREE",
                style: context.theme.textTheme.promoHeading(context),
              ),
            ),
          )
        ],
      ).animate(
        effects: [
          const FadeEffect(duration: kAnimDuration),
          const FlipEffect()
        ],
      ),
    );
  }
}
