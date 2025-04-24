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
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          code: args.code,
          date: args.date,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    Scan2Route.name: (routeData) {
      final args = routeData.argsAs<Scan2RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Scan2Page(
          key: args.key,
          machineId: args.machineId,
          status: args.status,
          number: args.number,
          ResultId: args.ResultId,
          statusOther: args.statusOther,
        ),
      );
    },
    Scan3Route.name: (routeData) {
      final args = routeData.argsAs<Scan3RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Scan3Page(
          key: args.key,
          model: args.model,
          machineInspectionId: args.machineInspectionId,
          machineId: args.machineId,
        ),
      );
    },
    ScanOtherRoute.name: (routeData) {
      final args = routeData.argsAs<ScanOtherRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ScanOtherPage(
          key: args.key,
          machineId: args.machineId,
          resultId: args.resultId,
        ),
      );
    },
    Sheet2Route.name: (routeData) {
      final args = routeData.argsAs<Sheet2RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Sheet2Page(
          key: args.key,
          MachineId: args.MachineId,
          date: args.date,
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
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    int? code,
    String? date,
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            code: code,
            date: date,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.code,
    this.date,
  });

  final Key? key;

  final int? code;

  final String? date;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, code: $code, date: $date}';
  }
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
/// [Scan2Page]
class Scan2Route extends PageRouteInfo<Scan2RouteArgs> {
  Scan2Route({
    Key? key,
    required String machineId,
    required String? status,
    int? number,
    required int ResultId,
    String? statusOther,
    List<PageRouteInfo>? children,
  }) : super(
          Scan2Route.name,
          args: Scan2RouteArgs(
            key: key,
            machineId: machineId,
            status: status,
            number: number,
            ResultId: ResultId,
            statusOther: statusOther,
          ),
          initialChildren: children,
        );

  static const String name = 'Scan2Route';

  static const PageInfo<Scan2RouteArgs> page = PageInfo<Scan2RouteArgs>(name);
}

class Scan2RouteArgs {
  const Scan2RouteArgs({
    this.key,
    required this.machineId,
    required this.status,
    this.number,
    required this.ResultId,
    this.statusOther,
  });

  final Key? key;

  final String machineId;

  final String? status;

  final int? number;

  final int ResultId;

  final String? statusOther;

  @override
  String toString() {
    return 'Scan2RouteArgs{key: $key, machineId: $machineId, status: $status, number: $number, ResultId: $ResultId, statusOther: $statusOther}';
  }
}

/// generated route for
/// [Scan3Page]
class Scan3Route extends PageRouteInfo<Scan3RouteArgs> {
  Scan3Route({
    Key? key,
    required InspectionitemMachineGetModel model,
    required String machineInspectionId,
    required String machineId,
    List<PageRouteInfo>? children,
  }) : super(
          Scan3Route.name,
          args: Scan3RouteArgs(
            key: key,
            model: model,
            machineInspectionId: machineInspectionId,
            machineId: machineId,
          ),
          initialChildren: children,
        );

  static const String name = 'Scan3Route';

  static const PageInfo<Scan3RouteArgs> page = PageInfo<Scan3RouteArgs>(name);
}

class Scan3RouteArgs {
  const Scan3RouteArgs({
    this.key,
    required this.model,
    required this.machineInspectionId,
    required this.machineId,
  });

  final Key? key;

  final InspectionitemMachineGetModel model;

  final String machineInspectionId;

  final String machineId;

  @override
  String toString() {
    return 'Scan3RouteArgs{key: $key, model: $model, machineInspectionId: $machineInspectionId, machineId: $machineId}';
  }
}

/// generated route for
/// [ScanOtherPage]
class ScanOtherRoute extends PageRouteInfo<ScanOtherRouteArgs> {
  ScanOtherRoute({
    Key? key,
    required String machineId,
    required int resultId,
    List<PageRouteInfo>? children,
  }) : super(
          ScanOtherRoute.name,
          args: ScanOtherRouteArgs(
            key: key,
            machineId: machineId,
            resultId: resultId,
          ),
          initialChildren: children,
        );

  static const String name = 'ScanOtherRoute';

  static const PageInfo<ScanOtherRouteArgs> page =
      PageInfo<ScanOtherRouteArgs>(name);
}

class ScanOtherRouteArgs {
  const ScanOtherRouteArgs({
    this.key,
    required this.machineId,
    required this.resultId,
  });

  final Key? key;

  final String machineId;

  final int resultId;

  @override
  String toString() {
    return 'ScanOtherRouteArgs{key: $key, machineId: $machineId, resultId: $resultId}';
  }
}

/// generated route for
/// [Sheet2Page]
class Sheet2Route extends PageRouteInfo<Sheet2RouteArgs> {
  Sheet2Route({
    Key? key,
    required String MachineId,
    required String date,
    List<PageRouteInfo>? children,
  }) : super(
          Sheet2Route.name,
          args: Sheet2RouteArgs(
            key: key,
            MachineId: MachineId,
            date: date,
          ),
          initialChildren: children,
        );

  static const String name = 'Sheet2Route';

  static const PageInfo<Sheet2RouteArgs> page = PageInfo<Sheet2RouteArgs>(name);
}

class Sheet2RouteArgs {
  const Sheet2RouteArgs({
    this.key,
    required this.MachineId,
    required this.date,
  });

  final Key? key;

  final String MachineId;

  final String date;

  @override
  String toString() {
    return 'Sheet2RouteArgs{key: $key, MachineId: $MachineId, date: $date}';
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
