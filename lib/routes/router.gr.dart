// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    ScanRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScanPage(),
      );
    },
    ScannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScannerPage(),
      );
    },
    Sheet2Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Sheet2Page(),
      );
    },
    Sheet3Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Sheet3Page(),
      );
    },
    SheetRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SheetPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScanPage]
class ScanRoute extends PageRouteInfo<void> {
  const ScanRoute({List<PageRouteInfo>? children})
      : super(
          ScanRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ScannerPage]
class ScannerRoute extends PageRouteInfo<void> {
  const ScannerRoute({List<PageRouteInfo>? children})
      : super(
          ScannerRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScannerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Sheet2Page]
class Sheet2Route extends PageRouteInfo<void> {
  const Sheet2Route({List<PageRouteInfo>? children})
      : super(
          Sheet2Route.name,
          initialChildren: children,
        );

  static const String name = 'Sheet2Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Sheet3Page]
class Sheet3Route extends PageRouteInfo<void> {
  const Sheet3Route({List<PageRouteInfo>? children})
      : super(
          Sheet3Route.name,
          initialChildren: children,
        );

  static const String name = 'Sheet3Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SheetPage]
class SheetRoute extends PageRouteInfo<void> {
  const SheetRoute({List<PageRouteInfo>? children})
      : super(
          SheetRoute.name,
          initialChildren: children,
        );

  static const String name = 'SheetRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
