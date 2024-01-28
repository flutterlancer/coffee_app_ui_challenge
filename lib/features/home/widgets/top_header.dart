import 'package:coffee_app_ui/utils/assets/assets.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopHeaderWidget extends StatelessWidget {
  const HomeTopHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 30.w),
        title: Text(
          "Location",
          style: context.theme.textTheme.homeLocationHeaderTitle(context),
        ),
        subtitle: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.sp),
              child: Text(
                "Bilzen, Tanjungbalai  ",
                style:
                    context.theme.textTheme.homeLocationHeaderSubTitle(context),
              ),
            ),
            SvgPicture.asset(context.assets.arrowDownIcon),
          ],
        ),
        trailing: SizedBox(
          width: 44.w,
          height: 44.h,
          child: ClipOval(
            child: Image.network(
                "https://yt3.ggpht.com/lzLrlTTtejbtYegv2k8lSf0fMmvKNpGHQWckyy_llZu8Y5TBxWsLgmArUtueHpN3yP5vKKoxXg=s48-c-k-c0x00ffffff-no-rj"),
          ),
        ),
      ),
    );
  }
}
