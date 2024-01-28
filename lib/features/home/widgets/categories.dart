import 'package:coffee_app_ui/utils/constants/home.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.h),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categories.length,
            (index) => Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                // width: 121.w,
                height: 38.h,
                margin: EdgeInsets.only(
                  left: index == 0 ? 30.w : 0,
                  right: index == 3 ? 30.w : 0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: index == 0
                      ? context.theme.primaryColor
                      : context.theme.whiteColor,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: context.theme.textTheme.categoryBar(
                        context,
                        fontWeight:
                            index == 0 ? FontWeight.w600 : FontWeight.normal,
                        color: index == 0
                            ? context.theme.whiteColor
                            : context.theme.unselectedCategoryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}
