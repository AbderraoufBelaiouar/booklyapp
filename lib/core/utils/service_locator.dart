import 'package:booklyapp/Features/home/data/repos/home_repos_impl.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeReposImpl>(HomeReposImpl(
    getIt.get<ApiService>(),
  ));

// // Alternatively you could write it if you don't like global variables
//   GetIt.I.registerSingleton<AppModel>(AppModel());
}
