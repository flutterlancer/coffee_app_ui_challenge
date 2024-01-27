import 'package:coffee_app_ui/utils/constants/constants.dart';
import 'package:coffee_app_ui/utils/extensions/text_theme_extension.dart';
import 'package:flutter/material.dart';

class CoffeeAppTheme {
  // actual theme
  static ThemeData get lightTheme => ThemeData(
        fontFamily: fontFamily,
        useMaterial3: true,
        primaryColor: const Color(0xffC67C4E),
      );
}

extension Extras on BuildContext {
  ThemeData get theme => CoffeeAppTheme.lightTheme;
}
