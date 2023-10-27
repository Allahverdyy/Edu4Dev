// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:edu4dev/app/views/view_splash/splash_view.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashView(),
      );
    }
  };
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i2.PageRouteInfo<void> {
  const SplashView({List<_i2.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
