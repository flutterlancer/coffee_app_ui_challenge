import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductTitleWidget extends StatelessWidget {
  final Product product;
  const ProductTitleWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: context.theme.textTheme
              .homeProductGridItemTitle(context)
              .copyWith(fontSize: 20.sp),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.subTitle,
                    style: context.theme.textTheme
                        .homeProductGridItemSubTitle(context),
                  ),
                  SizedBox(height: 16.h),
                  const Text("4.8 (230)"),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      context.assets.coffeeBean,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      context.assets.coffeeBean,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
