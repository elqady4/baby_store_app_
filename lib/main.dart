import 'package:baby_store_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:baby_store_app/Features/Home/presentation/manager/cubites/photos_cubit/photos_cubit.dart';
import 'package:baby_store_app/Features/Home/presentation/manager/cubites/users_cubit/users_cubit.dart';
import 'package:baby_store_app/Features/Home/presentation/manager/providers/side_navigator_provider.dart';
import 'package:baby_store_app/bloc_observer.dart';
import 'package:baby_store_app/constants.dart';
import 'package:baby_store_app/core/providers/bottom_navigator_bar_provider.dart';
import 'package:baby_store_app/core/utils/app_router.dart';
import 'package:baby_store_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'core/utils/service_locator.dart' as sl;

void main() {
  setupServiceLocator();
  Bloc.observer = AppBlocObserver();
  runApp(const BabyStoreApp());
}

class BabyStoreApp extends StatelessWidget {
  const BabyStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => UsersCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchAllUsers(),
        ),
        BlocProvider(
          create: (context) => PhotosCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchAllPhotos(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
              create: (context) => sl.getIt<BottomNavigatorBarProvider>()),
          ChangeNotifierProvider(
              create: (context) => sl.getIt<SideNavigatorProvider>()),
        ],
        child: ScreenUtilInit(
          child: SafeArea(
            child: MaterialApp.router(
              routerConfig: AppRouter.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.light().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme: GoogleFonts.montserratTextTheme(
                    ThemeData.light().textTheme),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
