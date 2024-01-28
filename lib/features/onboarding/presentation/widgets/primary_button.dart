import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryAppButtonWidget extends StatelessWidget {
  final double? width;
  final String title;
  final Color? bgColor;
  final TextStyle? style;
  final void Function() onTap;
  const PrimaryAppButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.width,
    this.style,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 1.sw,
        height: 62.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: bgColor ?? context.theme.primaryColor,
        ),
        child: Center(
          child: Text(
            title,
            style: style ?? titleStyle(context),
          ),
        ),
      ),
    );
  }

  static TextStyle titleStyle(BuildContext context) => TextStyle(
        fontSize: 16.sp,
        color: context.theme.whiteColor,
        fontWeight: FontWeight.w600,
      );
}
