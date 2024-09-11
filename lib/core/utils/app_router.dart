import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/data/repos/home_repos_impl.dart';
import 'package:booklyapp/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/views/book_details_view.dart';
import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/search/presentation/views/search_view.dart';
import 'package:booklyapp/Features/splach/presentation/views/splash_view.dart';
import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // ignore: constant_identifier_names
  static const KHomeView = '/HomeView';
  // ignore: constant_identifier_names
  static const KBookDetailsView = '/BookDetailsView';

  // ignore: constant_identifier_names
  static const KSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeReposImpl>()),
          child: BookDetailsView(
            book: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
