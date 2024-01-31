import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeliveryFeeWidget extends StatelessWidget {
  const DeliveryFeeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Delivery Fee",
          style: context.theme.textTheme
              .homeSearchFieldHintText(context)
              .copyWith(color: context.theme.primaryTextColor),
        ),
        Row(
          children: [
            Text(
              "\$ 2.0",
              style: context.theme.textTheme
                  .homeSearchFieldHintText(context)
                  .copyWith(
                    color: context.theme.primaryTextColor,
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            SizedBox(width: 8.w),
            Text(
              "\$ 1.0",
              style: context.theme.textTheme
                  .homeSearchFieldHintText(context)
                  .copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.theme.primaryTextColor,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
