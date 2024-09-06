import 'package:booklyapp/Features/home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splach/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // ignore: constant_identifier_names
  static const KHomeView = '/HomeView';
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
    ],
  );
}
