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
    HomenewRoute.name: (routeData) {
      final args = routeData.argsAs<HomenewRouteArgs>(
          orElse: () => const HomenewRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomenewPage(
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
          buId: args.buId,
          userId: args.userId,
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
          ResultId: args.ResultId,
          userId: args.userId,
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
          inspectionId: args.inspectionId,
          buId: args.buId,
          userId: args.userId,
        ),
      );
    },
    Sheet2Route.name: (routeData) {
      final args = routeData.argsAs<Sheet2RouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: Sheet2Page(
          key: args.key,
          machine: args.machine,
          date: args.date,
          resultId: args.resultId,
        ),
      );
    },
    SheetRoute.name: (routeData) {
      final args = routeData.argsAs<SheetRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SheetPage(
          key: args.key,
          buId: args.buId,
        ),
      );
    },
    SpalshRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpalshScreen(),
      );
    },
  };
}

/// generated route for
/// [HomenewPage]
class HomenewRoute extends PageRouteInfo<HomenewRouteArgs> {
  HomenewRoute({
    Key? key,
    int? code,
    String? date,
    List<PageRouteInfo>? children,
  }) : super(
          HomenewRoute.name,
          args: HomenewRouteArgs(
            key: key,
            code: code,
            date: date,
          ),
          initialChildren: children,
        );

  static const String name = 'HomenewRoute';

  static const PageInfo<HomenewRouteArgs> page =
      PageInfo<HomenewRouteArgs>(name);
}

class HomenewRouteArgs {
  const HomenewRouteArgs({
    this.key,
    this.code,
    this.date,
  });

  final Key? key;

  final int? code;

  final String? date;

  @override
  String toString() {
    return 'HomenewRouteArgs{key: $key, code: $code, date: $date}';
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
    required String buId,
    required int userId,
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
            buId: buId,
            userId: userId,
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
    required this.buId,
    required this.userId,
  });

  final Key? key;

  final String machineId;

  final String? status;

  final int? number;

  final int ResultId;

  final String? statusOther;

  final String buId;

  final int userId;

  @override
  String toString() {
    return 'Scan2RouteArgs{key: $key, machineId: $machineId, status: $status, number: $number, ResultId: $ResultId, statusOther: $statusOther, buId: $buId, userId: $userId}';
  }
}

/// generated route for
/// [Scan3Page]
class Scan3Route extends PageRouteInfo<Scan3RouteArgs> {
  Scan3Route({
    Key? key,
    required InspectionitemMachineGetModel model,
    required int machineInspectionId,
    required String machineId,
    required int ResultId,
    required int userId,
    List<PageRouteInfo>? children,
  }) : super(
          Scan3Route.name,
          args: Scan3RouteArgs(
            key: key,
            model: model,
            machineInspectionId: machineInspectionId,
            machineId: machineId,
            ResultId: ResultId,
            userId: userId,
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
    required this.ResultId,
    required this.userId,
  });

  final Key? key;

  final InspectionitemMachineGetModel model;

  final int machineInspectionId;

  final String machineId;

  final int ResultId;

  final int userId;

  @override
  String toString() {
    return 'Scan3RouteArgs{key: $key, model: $model, machineInspectionId: $machineInspectionId, machineId: $machineId, ResultId: $ResultId, userId: $userId}';
  }
}

/// generated route for
/// [ScanOtherPage]
class ScanOtherRoute extends PageRouteInfo<ScanOtherRouteArgs> {
  ScanOtherRoute({
    Key? key,
    required String machineId,
    required int resultId,
    required int inspectionId,
    required String buId,
    required int userId,
    List<PageRouteInfo>? children,
  }) : super(
          ScanOtherRoute.name,
          args: ScanOtherRouteArgs(
            key: key,
            machineId: machineId,
            resultId: resultId,
            inspectionId: inspectionId,
            buId: buId,
            userId: userId,
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
    required this.inspectionId,
    required this.buId,
    required this.userId,
  });

  final Key? key;

  final String machineId;

  final int resultId;

  final int inspectionId;

  final String buId;

  final int userId;

  @override
  String toString() {
    return 'ScanOtherRouteArgs{key: $key, machineId: $machineId, resultId: $resultId, inspectionId: $inspectionId, buId: $buId, userId: $userId}';
  }
}

/// generated route for
/// [Sheet2Page]
class Sheet2Route extends PageRouteInfo<Sheet2RouteArgs> {
  Sheet2Route({
    Key? key,
    required MachineModel machine,
    required String date,
    required int resultId,
    List<PageRouteInfo>? children,
  }) : super(
          Sheet2Route.name,
          args: Sheet2RouteArgs(
            key: key,
            machine: machine,
            date: date,
            resultId: resultId,
          ),
          initialChildren: children,
        );

  static const String name = 'Sheet2Route';

  static const PageInfo<Sheet2RouteArgs> page = PageInfo<Sheet2RouteArgs>(name);
}

class Sheet2RouteArgs {
  const Sheet2RouteArgs({
    this.key,
    required this.machine,
    required this.date,
    required this.resultId,
  });

  final Key? key;

  final MachineModel machine;

  final String date;

  final int resultId;

  @override
  String toString() {
    return 'Sheet2RouteArgs{key: $key, machine: $machine, date: $date, resultId: $resultId}';
  }
}

/// generated route for
/// [SheetPage]
class SheetRoute extends PageRouteInfo<SheetRouteArgs> {
  SheetRoute({
    Key? key,
    required String buId,
    List<PageRouteInfo>? children,
  }) : super(
          SheetRoute.name,
          args: SheetRouteArgs(
            key: key,
            buId: buId,
          ),
          initialChildren: children,
        );

  static const String name = 'SheetRoute';

  static const PageInfo<SheetRouteArgs> page = PageInfo<SheetRouteArgs>(name);
}

class SheetRouteArgs {
  const SheetRouteArgs({
    this.key,
    required this.buId,
  });

  final Key? key;

  final String buId;

  @override
  String toString() {
    return 'SheetRouteArgs{key: $key, buId: $buId}';
  }
}

/// generated route for
/// [SpalshScreen]
class SpalshRoute extends PageRouteInfo<void> {
  const SpalshRoute({List<PageRouteInfo>? children})
      : super(
          SpalshRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpalshRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
