import 'package:auto_route/auto_route.dart';
import 'package:maintenanceApp/core/app_theme_data.dart';
import 'package:maintenanceApp/core/color_values.dart';
import 'package:maintenanceApp/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/machineInspection/machine_inspection_bloc.dart';
import 'package:maintenanceApp/data/bloc/other/other_bloc.dart';
import 'package:maintenanceApp/data/bloc/result/result_bloc.dart';
import 'package:maintenanceApp/data/repositories/DetailInspection/detailInspection.dart';
import 'package:maintenanceApp/data/repositories/InspectionItem/inspectionItem.dart';
import 'package:maintenanceApp/data/repositories/MachineInspection/machine_inspection_repository_impl.dart';
import 'package:maintenanceApp/data/repositories/Result/result_repository_impl.dart';
import 'package:maintenanceApp/data/repositories/auth/auth.dart';
import 'package:maintenanceApp/data/repositories/machine/machine_repository_impl.dart';
import 'package:maintenanceApp/data/bloc/InspectionItem/inspection_item_bloc.dart';
import 'package:maintenanceApp/data/bloc/auth/auth_bloc.dart';
import 'package:maintenanceApp/data/bloc/machine/machine_bloc.dart';
import 'package:maintenanceApp/data/repositories/other/other_repository_impl.dart';
import 'package:maintenanceApp/features/auth/views/login_page.dart';
import 'package:maintenanceApp/features/home/view/homeNew_page.dart';
import 'package:maintenanceApp/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();

  final authRepository = AuthRepositoryImpl();
  final isLoggedIn = await authRepository.checkTokenValidity();

  runApp(MainApp(
    isLoggedIn: isLoggedIn,
  ));
}

final appRouter = AppRouter();
const breakfast = "breakfast";
const lunch = "lunch";
const dinnner = "dinner";

class MainApp extends StatelessWidget {
  final bool isLoggedIn;
  const MainApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Sizer(builder: (_, __, ___) {
      return GlobalLoaderOverlay(
        useDefaultLoading: false,
        closeOnBackButton: true,
        overlayWidgetBuilder: (_) {
          return const Center(
            child: SpinKitChasingDots(
              color: ColorValues.primary50,
              size: 50.0,
            ),
          );
        },
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (__) => AuthBloc(repository: AuthRepositoryImpl())),
            BlocProvider(
                create: (_) =>
                    InspectionItemBloc(InspectionitemRepositoryImpl())),
            BlocProvider(create: (_) => MachineBloc(MachineRepositoryImpl())),
            BlocProvider(
                create: (_) => DetailInspectionBloc(
                    repository: DetailinspectionRepositoryImpl())),
            BlocProvider(
                create: (_) => ResultBloc(repository: ResultRepositoryImpl())),
            BlocProvider(
                create: (_) =>
                    MachineInspectionBloc(MachineInspectionRepositoryImpl())),
            BlocProvider(create: (_) => OtherBloc(OtherRepositoryImpl())),
          ],
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: MaterialApp.router(
              theme: AppThemeData.getTheme(context),
              routerDelegate: AutoRouterDelegate(
                appRouter,
                navigatorObservers: () => [HeroController()],
              ),
              routeInformationParser: AppRouter().defaultRouteParser(),
              debugShowCheckedModeBanner: false,
            ),
          ),
        ),
      );
    });
  }
}
