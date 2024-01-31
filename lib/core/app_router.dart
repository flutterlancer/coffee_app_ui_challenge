import 'package:coffee_app_ui/core/routes.dart';
import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/features/home/pages/home_page.dart';
import 'package:coffee_app_ui/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:coffee_app_ui/features/order_trracking/presentation/pages/track_order_page.dart';
import 'package:coffee_app_ui/features/product/presentation/pages/order_page.dart';
import 'package:coffee_app_ui/features/product/presentation/pages/product_details_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: AppRoutes.home,
        pageBuilder: (context, state) => const CupertinoPage(child: HomePage()),
      ),
      GoRoute(
        path: AppRoutes.productDetails,
        name: AppRoutes.productDetailsName,
        pageBuilder: (context, state) => CupertinoPage(
          child: ProductDetails(state.extra as Product),
        ),
        routes: [
          GoRoute(
            path: AppRoutes.order,
            name: AppRoutes.order,
            pageBuilder: (context, state) => CupertinoPage(
              child: OrderPage(product: state.extra as Product),
            ),
          ),
        ],
      ),
      GoRoute(
        path: AppRoutes.trackOrder,
        pageBuilder: (context, state) =>
            const CupertinoPage(child: TrackOrderPage()),
      ),
    ],
  );
}
