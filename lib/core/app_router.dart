import 'package:coffee_app_ui/core/routes.dart';
import 'package:coffee_app_ui/features/onboarding/pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
    ],
  );
}
