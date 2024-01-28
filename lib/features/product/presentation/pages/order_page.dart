import 'package:coffee_app_ui/features/onboarding/presentation/widgets/primary_button.dart';
import 'package:coffee_app_ui/src/widgets/app_bar.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, actions: [], title: "Order"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w).copyWith(top: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PrimaryAppButtonWidget(
                  title: "Deliver",
                  onTap: () {},
                  width: 153.w,
                ),
                PrimaryAppButtonWidget(
                  title: "Pickup",
                  onTap: () {},
                  width: 153.w,
                  bgColor: context.theme.whiteColor,
                  style: PrimaryAppButtonWidget.titleStyle(context).copyWith(
                    fontWeight: FontWeight.normal,
                    color: context.theme.primaryTextColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 28.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Delivery Address",
                  style:
                      context.theme.textTheme.homeProductGridItemTitle(context),
                ),
                SizedBox(height: 16.h),
                Text(
                  "Jl. Kpg Sutoyo",
                  style: context.theme.textTheme
                      .homeProductGridItemTitle(context)
                      .copyWith(fontSize: 14.sp),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                  style: context.theme.textTheme
                      .homeProductGridItemSubTitle(context),
                ),
                SizedBox(height: 16.h),
                Row(
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
