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
          status: args.status,
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
    ScannerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ScannerPage(),
      );
    },
    Sheet2Route.name: (routeData) {
      final args = routeData.argsAs<Sheet2RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Sheet2Page(
          key: args.key,
          result: args.result,
        ),
      );
    },
    Sheet3Route.name: (routeData) {
      final args = routeData.argsAs<Sheet3RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Sheet3Page(
          key: args.key,
          machineId: args.machineId,
          bulan: args.bulan,
          day: args.day,
        ),
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
    required String status,
    List<PageRouteInfo>? children,
  }) : super(
          Scan2Route.name,
          args: Scan2RouteArgs(
            key: key,
            id: id,
            status: status,
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
    required this.status,
  });

  final Key? key;

  final int id;

  final String status;

  @override
  String toString() {
    return 'Scan2RouteArgs{key: $key, id: $id, status: $status}';
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
class Sheet2Route extends PageRouteInfo<Sheet2RouteArgs> {
  Sheet2Route({
    Key? key,
    required ResultData result,
    List<PageRouteInfo>? children,
  }) : super(
          Sheet2Route.name,
          args: Sheet2RouteArgs(
            key: key,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'Sheet2Route';

  static const PageInfo<Sheet2RouteArgs> page = PageInfo<Sheet2RouteArgs>(name);
}

class Sheet2RouteArgs {
  const Sheet2RouteArgs({
    this.key,
    required this.result,
  });

  final Key? key;

  final ResultData result;

  @override
  String toString() {
    return 'Sheet2RouteArgs{key: $key, result: $result}';
  }
}

/// generated route for
/// [Sheet3Page]
class Sheet3Route extends PageRouteInfo<Sheet3RouteArgs> {
  Sheet3Route({
    Key? key,
    required int machineId,
    required String bulan,
    required String day,
    List<PageRouteInfo>? children,
  }) : super(
          Sheet3Route.name,
          args: Sheet3RouteArgs(
            key: key,
            machineId: machineId,
            bulan: bulan,
            day: day,
          ),
          initialChildren: children,
        );

  static const String name = 'Sheet3Route';

  static const PageInfo<Sheet3RouteArgs> page = PageInfo<Sheet3RouteArgs>(name);
}

class Sheet3RouteArgs {
  const Sheet3RouteArgs({
    this.key,
    required this.machineId,
    required this.bulan,
    required this.day,
  });

  final Key? key;

  final int machineId;

  final String bulan;

  final String day;

  @override
  String toString() {
    return 'Sheet3RouteArgs{key: $key, machineId: $machineId, bulan: $bulan, day: $day}';
  }
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
