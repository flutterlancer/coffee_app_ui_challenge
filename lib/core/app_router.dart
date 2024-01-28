import 'package:coffee_app_ui/core/routes.dart';
import 'package:coffee_app_ui/features/home/data/models/product_model.dart';
import 'package:coffee_app_ui/features/home/pages/home_page.dart';
import 'package:coffee_app_ui/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:coffee_app_ui/features/product/presentation/pages/order_page.dart';
import 'package:coffee_app_ui/features/product/presentation/pages/product_details_page.dart';
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
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutes.productDetails,
        name: AppRoutes.productDetailsName,
        builder: (context, state) => ProductDetails(state.extra as Product),
        routes: [
          GoRoute(
            path: AppRoutes.order,
            name: AppRoutes.order,
            builder: (context, state) => const OrderPage(),
          ),
        ],
      ),
    ],
  );
}
