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
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    Scan1Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Scan1Page(),
      );
    },
    Scan2Route.name: (routeData) {
      final args = routeData.argsAs<Scan2RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Scan2Page(
          key: args.key,
          id: args.id,
        ),
      );
    },
    Scan3Route.name: (routeData) {
      final args = routeData.argsAs<Scan3RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Scan3Page(
          key: args.key,
          id: args.id,
          number: args.number,
        ),
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
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Scan1Page]
class Scan1Route extends PageRouteInfo<void> {
  const Scan1Route({List<PageRouteInfo>? children})
      : super(
          Scan1Route.name,
          initialChildren: children,
        );

  static const String name = 'Scan1Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Scan2Page]
class Scan2Route extends PageRouteInfo<Scan2RouteArgs> {
  Scan2Route({
    Key? key,
    required int id,
    List<PageRouteInfo>? children,
  }) : super(
          Scan2Route.name,
          args: Scan2RouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'Scan2Route';

  static const PageInfo<Scan2RouteArgs> page = PageInfo<Scan2RouteArgs>(name);
}

class Scan2RouteArgs {
  const Scan2RouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'Scan2RouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [Scan3Page]
class Scan3Route extends PageRouteInfo<Scan3RouteArgs> {
  Scan3Route({
    Key? key,
    required int id,
    required int number,
    List<PageRouteInfo>? children,
  }) : super(
          Scan3Route.name,
          args: Scan3RouteArgs(
            key: key,
            id: id,
            number: number,
          ),
          initialChildren: children,
        );

  static const String name = 'Scan3Route';

  static const PageInfo<Scan3RouteArgs> page = PageInfo<Scan3RouteArgs>(name);
}

class Scan3RouteArgs {
  const Scan3RouteArgs({
    this.key,
    required this.id,
    required this.number,
  });

  final Key? key;

  final int id;

  final int number;

  @override
  String toString() {
    return 'Scan3RouteArgs{key: $key, id: $id, number: $number}';
  }
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
