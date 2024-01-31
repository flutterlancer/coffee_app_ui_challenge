import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';

class OrderPriceWidget extends StatelessWidget {
  final Product product;
  const OrderPriceWidget(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Price",
          style: context.theme.textTheme
              .homeSearchFieldHintText(context)
              .copyWith(color: context.theme.primaryTextColor),
        ),
        Text(
          "\$ ${product.price}",
          style:
              context.theme.textTheme.homeSearchFieldHintText(context).copyWith(
                    fontWeight: FontWeight.w600,
                    color: context.theme.primaryTextColor,
                  ),
        ),
      ],
    );
  }
}
