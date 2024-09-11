import 'package:booklyapp/Features/home/data/repos/home_repos.dart';
import 'package:booklyapp/Features/home/data/repos/home_repos_impl.dart';
import 'package:booklyapp/Features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/api_service.dart';
import 'package:booklyapp/core/utils/app_router.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeReposImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeReposImpl>(),
          )..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        // home: const SplashView(),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
