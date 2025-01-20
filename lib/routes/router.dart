import 'package:application/features/scan/view/scan_page.dart';
import 'package:application/features/sheet/view/sheet_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:application/features/pages.dart';

import '../features/sheet/view/sheet_page_2.dart';
import '../features/sheet/view/sheet_page_3.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: HomeRoute.page,
          path: '/home',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          initial: true,
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
      ];
}
