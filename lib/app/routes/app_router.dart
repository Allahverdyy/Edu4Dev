import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        /// routes go here
        AutoRoute(initial: true, page: SplashViewRoute.page),
        AutoRoute(page: OnboardingViewRoute.page),
        AutoRoute(page: SignInViewRoute.page),
        AutoRoute(page: SignUpViewRoute.page),
        AutoRoute( page: NavBarViewRoute.page, 
        children: [
          AutoRoute(page: HomeViewRoute.page),
        ])
      ];
}
