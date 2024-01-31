import 'package:coffee_app_ui/features/order_trracking/presentation/widgets/map.dart';
import 'package:coffee_app_ui/features/order_trracking/presentation/widgets/tracking_details.dart';
import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class TrackOrderPage extends StatelessWidget {
  const TrackOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: context.theme.transparentColor,
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: SvgPicture.asset(context.assets.backIcon),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(context.assets.recentreIcon),
            ),
          )
        ],
      ),
      body: const MapWidget(),
      bottomSheet: const TrackingDettailsWidget(),
    );
  }
}
