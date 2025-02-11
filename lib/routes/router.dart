import 'package:application/features/auth/views/login_page.dart';
import 'package:application/features/scan/view/scan_1_page.dart';
import 'package:application/features/scan/view/scan_2_page.dart';
import 'package:application/features/scan/view/scan_3_page.dart';
import 'package:application/features/scanner/view/scanner_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:application/features/pages.dart';
import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: HomeRoute.page,
          path: '/home',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: LoginRoute.page,
          path: '/login',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          initial: true,
        ),
        CustomRoute(
          page: Scan1Route.page,
          path: '/scanPage1',
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
          page: ScanRoute.page,
          path: '/scan',
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
        CustomRoute(
          page: Sheet3Route.page,
          path: '/sheet3',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          // initial: true
        ),
        CustomRoute(
          page: ScannerRoute.page,
          path: '/scanner',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          // initial: true
        ),
      ];
}
