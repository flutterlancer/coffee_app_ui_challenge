import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/constants/constants.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TrackingDettailsWidget extends StatelessWidget {
  const TrackingDettailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.43,
      maxChildSize: 0.43,
      minChildSize: 0.1,
      snapSizes: const [0.1, 0.43],
      snapAnimationDuration: const Duration(milliseconds: 98),
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: context.theme.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.r),
            topRight: Radius.circular(24.r),
          ),
          boxShadow: [
            BoxShadow(
              color: context.theme.trackingPageShadowColor,
              offset: const Offset(0, -10),
              blurRadius: 24,
            )
          ],
        ),
        width: 1.sw,
        child: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10.h),
              Container(
                width: 44.w,
                height: 5.h,
                decoration: BoxDecoration(
                  color: context.theme.trackingPageShadowColor.withOpacity(1),
                  borderRadius: BorderRadius.circular(50.r),
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                "10 minutes left",
                style:
                    context.theme.textTheme.homeProductGridItemTitle(context),
              ),
              SizedBox(height: 10.h),
              RichText(
                text: TextSpan(
                    text: "Delivery To",
                    style: context.theme.textTheme
                        .homeProductGridItemSubTitle(context)
                        .copyWith(fontFamily: fontFamily),
                    children: [
                      TextSpan(
                        text: " Jl. Kpg Sutoyo",
                        style: context.theme.textTheme
                            .homeProductGridItemSubTitle(context)
                            .copyWith(
                                fontWeight: FontWeight.w600,
                                color: context.theme.primaryTextColor,
                                fontFamily: fontFamily),
                      ),
                    ]),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 0 : 12.w),
                    child: Container(
                      width: 71.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: index == 3
                            ? context.theme.orderPageDiabledBarColor
                            : context.theme.orderPageActiveBarColor,
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  leading: Icon(
                    Icons.delivery_dining,
                    color: context.theme.primaryColor,
                    size: 26.w,
                  ),
                  horizontalTitleGap: 24.w,
                  title: Text(
                    "Delivered your order",
                    style: context.theme.textTheme
                        .homeProductGridItemTitle(context),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 8.h),
                    child: Text(
                      "We deliver your goods to you in the shortes possible time.",
                      style: context.theme.textTheme
                          .homeProductGridItemSubTitle(context),
                    ),
                  ),
                ).animate(effects: [
                  const FadeEffect(),
                  const SlideEffect(
                    begin: Offset(0, 0.5),
                  ),
                ]),
              ),
              SizedBox(height: 20.h),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 30.w)
                    .copyWith(bottom: 16.h),
                leading: Container(
                  width: 54.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Image.asset(context.assets.deliveryBoy),
                ),
                horizontalTitleGap: 24.w,
                title: Text(
                  "Johan Hawn",
                  style:
                      context.theme.textTheme.homeProductGridItemTitle(context),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Text(
                    "Personal Courier",
                    style: context.theme.textTheme
                        .homeProductGridItemSubTitle(context),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(context.assets.callIcon),
                ),
              ).animate(effects: [
                const FadeEffect(),
                const SlideEffect(
                  begin: Offset(0, 0.5),
                ),
              ]),
            ],
          ),
        ),
      ).animate(
        effects: [
          // const FadeEffect(duration: kAnimDuration),
          const SlideEffect(
            begin: Offset(0, 0.5),
            duration: Duration(milliseconds: 100),
          ),
        ],
        autoPlay: true,
      ),
    );
  }
}
