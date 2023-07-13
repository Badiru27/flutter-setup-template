import 'package:auto_route/auto_route.dart';
import 'package:meuve_v2/src/features/auth/presentation/views/onboarding_screen.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            path: OnboardingScreen.route,
            page: OnboardingRoute.page,
            initial: true),
      ];
}
