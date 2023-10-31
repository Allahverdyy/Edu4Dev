// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:edu4dev/app/views/view_home/home_view.dart' as _i1;
import 'package:edu4dev/app/views/view_onboarding/onboarding_view.dart' as _i3;
import 'package:edu4dev/app/views/view_signin/view/signin_view.dart' as _i4;
import 'package:edu4dev/app/views/view_signup/view/signup_view.dart' as _i5;
import 'package:edu4dev/app/views/view_splash/splash_view.dart' as _i6;
import 'package:edu4dev/core/widgets/navbar/navbar.dart' as _i2;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomeView(),
      );
    },
    NavBarViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NavBarView(),
      );
    },
    OnboardingViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OnboardingView(),
      );
    },
    SignInViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignInView(),
      );
    },
    SignUpViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpView(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeView]
class HomeViewRoute extends _i7.PageRouteInfo<void> {
  const HomeViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NavBarView]
class NavBarViewRoute extends _i7.PageRouteInfo<void> {
  const NavBarViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          NavBarViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavBarViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OnboardingView]
class OnboardingViewRoute extends _i7.PageRouteInfo<void> {
  const OnboardingViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          OnboardingViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignInView]
class SignInViewRoute extends _i7.PageRouteInfo<void> {
  const SignInViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignInViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignUpView]
class SignUpViewRoute extends _i7.PageRouteInfo<void> {
  const SignUpViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SignUpViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashView]
class SplashViewRoute extends _i7.PageRouteInfo<void> {
  const SplashViewRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashViewRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
