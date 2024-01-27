import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryAppButtonWidget extends StatelessWidget {
  final String title;
  const PrimaryAppButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      height: 62.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: context.theme.primaryColor,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            color: context.theme.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
