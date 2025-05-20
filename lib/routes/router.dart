import 'package:maintenanceApp/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/models/machine/machine_model.dart';
import 'package:maintenanceApp/features/SpalshScreen.dart';
import 'package:maintenanceApp/features/auth/views/login_page.dart';
import 'package:maintenanceApp/features/home/view/homeNew_page.dart';
import 'package:maintenanceApp/features/scan/view/scan_2_page.dart';
import 'package:maintenanceApp/features/scan/view/scan_3_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:maintenanceApp/features/pages.dart';
import 'package:flutter/material.dart';
import 'package:maintenanceApp/features/scan/view/scan_other_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
            CustomRoute(
          page: SpalshRoute.page,
          path: '/splash',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          initial: true,
        ),
        CustomRoute(
          page: HomenewRoute.page,
          path: '/homenew',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          // initial: true,
        ),
        CustomRoute(
          page: LoginRoute.page,
          path: '/login',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          // initial: true,
        ),
        CustomRoute(
          page: Scan2Route.page,
          path: '/scanPage2',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: Scan3Route.page,
          path: '/scanPage3',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: ScanOtherRoute.page,
          path: '/scanOtherPage',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: SheetRoute.page,
          path: '/sheet',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          // initial: true
        ),
        CustomRoute(
          page: Sheet2Route.page,
          path: '/sheet2',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          // initial: true
        ),
      ];
}
