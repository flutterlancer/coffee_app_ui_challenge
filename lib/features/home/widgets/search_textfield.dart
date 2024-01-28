import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeSearchTextFieldWidget extends StatelessWidget {
  const HomeSearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28.h, right: 30.w, left: 30.w),
      child: Container(
        width: 1.sw,
        height: 62.h,
        decoration: BoxDecoration(
          color: context.theme.homeSearchTextFieldColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 4.w),
          child: Center(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search coffee",
                hintStyle:
                    context.theme.textTheme.homeSearchFieldHintText(context),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: SvgPicture.asset(
                  context.assets.searchIcon,
                  // width: 20.w,
                  // height: 20.h,
                  fit: BoxFit.scaleDown,
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Container(
                    width: 44.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                      color: context.theme.primaryColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: SvgPicture.asset(context.assets.filterIcon),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
