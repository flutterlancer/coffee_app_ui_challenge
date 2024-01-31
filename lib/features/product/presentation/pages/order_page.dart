import 'package:coffee_app_ui/core/routes.dart';
import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/features/onboarding/presentation/widgets/primary_button.dart';
import 'package:coffee_app_ui/features/product/presentation/widgets/delivery_fee.dart';
import 'package:coffee_app_ui/features/product/presentation/widgets/order_edit_buttons.dart';
import 'package:coffee_app_ui/features/product/presentation/widgets/order_price.dart';
import 'package:coffee_app_ui/src/widgets/app_bar.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/assets/icons.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class OrderPage extends StatelessWidget {
  final Product product;
  const OrderPage({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, actions: [], title: "Order"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w).copyWith(top: 24.h),
        child: SingleChildScrollView(
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
                    style: context.theme.textTheme
                        .homeProductGridItemTitle(context),
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
                  const OrderEditButtonsWidget(),
                  SizedBox(height: 46.h),
                  // selected product
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                        width: 54.w,
                        height: 54.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Image.asset(product.imageURL)),
                    title: Text(
                      product.title,
                      style: context.theme.textTheme
                          .homeProductGridItemTitle(context),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Text(
                        product.subTitle,
                        style: context.theme.textTheme
                            .homeProductGridItemSubTitle(context),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        context.icons.minusIcon,
                        SizedBox(width: 20.w),
                        const Text("1"),
                        SizedBox(width: 20.w),
                        context.icons.addIconBlack
                      ],
                    ),
                  ),
                  SizedBox(height: 44.h),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.theme.discountListileBorderColor,
                      ),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: ListTile(
                      leading: SvgPicture.asset(context.assets.discountIcon),
                      title: Text(
                        "1 Discount is applied",
                        style: context.theme.textTheme
                            .homeProductGridItemTitle(context),
                      ),
                      trailing: context.icons.cupertinoForwardIcon,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "Payment Summary",
                    style: context.theme.textTheme
                        .homeProductGridItemTitle(context),
                  ),
                  SizedBox(height: 20.h),
                  // price
                  OrderPriceWidget(product),
                  SizedBox(height: 16.h),
                  const DeliveryFeeWidget(),
                  SizedBox(height: 32.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Payment",
                        style: context.theme.textTheme
                            .homeSearchFieldHintText(context)
                            .copyWith(color: context.theme.primaryTextColor),
                      ),
                      Text(
                        "\$ 5.53",
                        style: context.theme.textTheme
                            .homeSearchFieldHintText(context)
                            .copyWith(
                              fontWeight: FontWeight.w600,
                              color: context.theme.primaryTextColor,
                            ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(context.assets.cashIcon),
                          SizedBox(width: 12.w),
                          Container(
                            width: 50.w,
                            height: 24.h,
                            decoration: BoxDecoration(
                              color: context.theme.primaryColor,
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Center(
                              child: Text(
                                "Cash",
                                style: context.theme.textTheme
                                    .homeProductGridItemSubTitle(context)
                                    .copyWith(color: context.theme.whiteColor),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "\$ 5.53",
                            style: context.theme.textTheme
                                .homeProductGridItemSubTitle(context)
                                .copyWith(
                                    color: context.theme.primaryTextColor),
                          ),
                        ],
                      ),
                      SvgPicture.asset(context.assets.moreIcon),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  PrimaryAppButtonWidget(
                    title: "Order",
                    onTap: () {
                      context.push(AppRoutes.trackOrder);
                    },
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
