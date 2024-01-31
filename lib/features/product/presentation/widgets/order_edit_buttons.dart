import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderEditButtonsWidget extends StatelessWidget {
  const OrderEditButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(context.assets.editIcon),
              SizedBox(width: 8.w),
              Text(
                "Edit Address",
                style: context.theme.textTheme
                    .homeProductGridItemSubTitle(context)
                    .copyWith(
                      color: context.theme.primaryTextColor,
                    ),
              )
            ],
          ),
        ),
        SizedBox(width: 12.w),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SvgPicture.asset(context.assets.noteIcon),
              SizedBox(width: 8.w),
              Text(
                "Add Note",
                style: context.theme.textTheme
                    .homeProductGridItemSubTitle(context)
                    .copyWith(
                      color: context.theme.primaryTextColor,
                    ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
