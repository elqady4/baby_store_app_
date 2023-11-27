import 'package:baby_store_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:baby_store_app/Features/Home/presentation/manager/providers/side_navigator_provider.dart';
import 'package:baby_store_app/core/providers/bottom_navigator_bar_provider.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Repos
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(apiService:  getIt.get<ApiService>()));


  // Providers
  getIt.registerFactory<BottomNavigatorBarProvider>(() =>BottomNavigatorBarProvider() ,);
  getIt.registerFactory<SideNavigatorProvider>(() =>SideNavigatorProvider() ,);
}
