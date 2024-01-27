import 'package:coffee_app_ui/core/app_router.dart';
import 'package:coffee_app_ui/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375.0, 812.0),
      child: MaterialApp.router(
        title: 'Coffee App UI',
        theme: CoffeeAppTheme.lightTheme,
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
