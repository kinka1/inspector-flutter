import 'package:application/core/app_theme_data.dart';
import 'package:application/core/color_values.dart';
import 'package:application/data/bloc/DetailInspection/detail_inspection_bloc.dart';
import 'package:application/data/bloc/result/result_bloc.dart';
import 'package:application/data/repositories/DetailInspection/detailInspection.dart';
import 'package:application/data/repositories/InspectionItem/inspectionItem.dart';
import 'package:application/data/repositories/Result/result_repository_impl.dart';
import 'package:application/data/repositories/auth/auth.dart';
import 'package:application/data/repositories/machine/machine_repository_impl.dart';
import 'package:application/features/InspectionItem/bloc/inspection_item_bloc.dart';
import 'package:application/features/auth/bloc/auth_bloc.dart';
import 'package:application/features/machine/bloc/machine_bloc.dart';
import 'package:application/routes/router.dart';
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

  runApp(const MainApp());
}

final appRouter = AppRouter();
const breakfast = "breakfast";
const lunch = "lunch";
const dinnner = "dinner";

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
            BlocProvider(create: (__) => AuthBloc(repository: AuthRepositoryImpl())),
            BlocProvider(
                create: (_) =>
                    InspectionItemBloc(InspectionitemRepositoryImpl())),
            BlocProvider(create: (_) => MachineBloc(MachineRepositoryImpl())),
            BlocProvider(create: (_) => DetailInspectionBloc(repository: DetailinspectionRepositoryImpl())),
            BlocProvider(create: (_) => ResultBloc(repository: ResultRepositoryImpl())),
          ],
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: MaterialApp.router(
              theme: AppThemeData.getTheme(context),
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
              debugShowCheckedModeBanner: false,
            ),
          ),
        ),
      );
    });
  }
}
