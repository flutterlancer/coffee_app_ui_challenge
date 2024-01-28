import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

AppBar commonAppBar(
  BuildContext context, {
  String? title,
  List<Widget>? actions,
}) =>
    AppBar(
      centerTitle: true,
      title: Text(
        title ?? "Detail",
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: context.theme.primaryTextColor,
        ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: SvgPicture.asset(context.assets.backIcon),
        ),
      ),
      actions: actions ??
          [
            Padding(
              padding: EdgeInsets.only(right: 16.w),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(context.assets.wishlistIcon),
              ),
            )
          ],
    );
