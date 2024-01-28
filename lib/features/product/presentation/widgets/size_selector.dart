import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:coffee_app_ui/utils/extensions/theme_extension.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeSelectorWidget extends StatefulWidget {
  const SizeSelectorWidget({super.key});

  @override
  State<SizeSelectorWidget> createState() => _SizeSelectorWidgetState();
}

class _SizeSelectorWidgetState extends State<SizeSelectorWidget> {
  List<String> sizes = ["S", "M", "L"];
  String selectedSize = "M";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: sizes
          .map(
            (size) => GestureDetector(
              onTap: () => setState(() => selectedSize = size),
              child: Container(
                width: 96.w,
                height: 43.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: size == selectedSize
                        ? context.theme.primaryColor
                        : context.theme.hintColor,
                  ),
                ),
                child: Center(
                  child: Text(
                    size,
                    style: context.theme.textTheme.categoryBar(
                      context,
                      color: size == selectedSize
                          ? context.theme.primaryColor
                          : context.theme.primaryTextColor,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
