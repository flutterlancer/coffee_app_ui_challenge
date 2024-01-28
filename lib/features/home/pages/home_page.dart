import 'package:coffee_app_ui/features/home/widgets/categories.dart';
import 'package:coffee_app_ui/features/home/widgets/grid_product.dart';
import 'package:coffee_app_ui/features/home/widgets/promo_card.dart';
import 'package:coffee_app_ui/features/home/widgets/search_textfield.dart';
import 'package:coffee_app_ui/features/home/widgets/top_header.dart';
import 'package:coffee_app_ui/utils/constants/home.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool _) => [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: context.theme.homeTopBarGradient,
                    ),
                    width: 1.sw,
                    height: 280.h,
                  ),
                ),
                const Column(
                  children: [
                    HomeTopHeaderWidget(),
                    // search text field
                    HomeSearchTextFieldWidget(),
                    // promo
                    PromoCardWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
        body: Column(
          children: [
            // categories
            const CategoriesWidget(),
            // products
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: GridView.builder(
                  itemCount: products(context).length,
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.w,
                    mainAxisExtent: 250.h,
                    mainAxisSpacing: 16.h,
                  ),
                  itemBuilder: (_, index) =>
                      GridProductWidget(product: products(context)[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
