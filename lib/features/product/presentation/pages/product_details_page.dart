import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/src/widgets/app_bar.dart';
import 'package:coffee_app_ui/features/product/presentation/widgets/bottom_controls.dart';
import 'package:coffee_app_ui/features/product/presentation/widgets/product_title.dart';
import 'package:coffee_app_ui/features/product/presentation/widgets/size_selector.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:rich_readmore/rich_readmore.dart';

import '../widgets/product_image.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  const ProductDetails(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w).copyWith(top: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductImage(imageUrl: product.imageURL),
              SizedBox(height: 24.h),
              ProductTitleWidget(product),
              SizedBox(height: 40.h),
              Text(
                "Description",
                style:
                    context.theme.textTheme.homeProductGridItemTitle(context),
              ),
              SizedBox(height: 12.h),
              RichReadMoreText.fromString(
                text: product.description,
                textStyle: context.theme.textTheme
                    .homeProductGridItemSubTitle(context)
                    .copyWith(fontSize: 14.sp),
                settings: LineModeSettings(
                  trimLines: 3,
                  trimCollapsedText: 'See More',
                  trimExpandedText: 'Seee Less',
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                "Size",
                style:
                    context.theme.textTheme.homeProductGridItemTitle(context),
              ),
              SizedBox(height: 12.h),
              const SizeSelectorWidget(),
              // Pricing
              SizedBox(height: 40.h),
              BottomControlsWidget(product),
              SizedBox(height: 8.h),
            ],
          ),
        ),
      ),
    );
  }
}
