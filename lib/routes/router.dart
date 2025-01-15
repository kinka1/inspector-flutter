import 'package:application/features/scan/view/scan_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:application/features/pages.dart';

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
          initial: true,
        ),
      ];
}
