import 'package:coffee_app_ui/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class CoffeeAppTheme {
  // actual theme
  static ThemeData get lightTheme => ThemeData(
        fontFamily: fontFamily,
        useMaterial3: true,
        textButtonTheme: textButtonTheme(),
        primaryColor: const Color(0xffC67C4E),
      );

  static TextButtonThemeData textButtonTheme() {
    return TextButtonThemeData(
      style: ButtonStyle(
        overlayColor:
            MaterialStatePropertyAll(const Color(0xff808080).withOpacity(0.1)),
      ),
    );
  }
}

extension Extras on BuildContext {
  ThemeData get theme => CoffeeAppTheme.lightTheme;
}
