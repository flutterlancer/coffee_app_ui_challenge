import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes.dart';
import '../../../onboarding/presentation/widgets/primary_button.dart';

class BottomControlsWidget extends StatelessWidget {
  final Product product;
  const BottomControlsWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: TextStyle(
                fontSize: 14.sp,
                color: context.theme.secondaryTextColor,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "\$${product.price}",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: context.theme.primaryColor,
              ),
            ),
          ],
        ),
        PrimaryAppButtonWidget(
          title: "Buy Now",
          onTap: () {
            context.push("${AppRoutes.productDetails}/${AppRoutes.order}");
          },
          width: 217.w,
        )
      ],
    );
  }
}
