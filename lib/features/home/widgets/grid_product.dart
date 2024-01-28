import 'package:coffee_app_ui/core/routes.dart';
import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/utils/assets/icons.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class GridProductWidget extends StatelessWidget {
  final Product product;
  const GridProductWidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 149.w,
      height: 250.h,
      decoration: BoxDecoration(
        // color: context.theme.whiteColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: InkWell(
        onTap: () {
          context.push(AppRoutes.productDetails, extra: product);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w)
                  .copyWith(bottom: 12.h, top: 4.h),
              child: Container(
                width: 150.w,
                height: 132.h,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(product.imageURL))),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: context.theme.textTheme
                        .homeProductGridItemTitle(context),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    product.subTitle,
                    style: context.theme.textTheme
                        .homeProductGridItemSubTitle(context),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${product.price}",
                        style: context.theme.textTheme
                            .homeProductGridItemPrice(context),
                      ),
                      Container(
                        width: 32.w,
                        height: 32.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: context.theme.primaryColor,
                        ),
                        child: context.icons.addIcon,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
