import 'package:bookly/constants.dart';
import 'package:bookly/features/search/presentation/view/search_page.dart';
import 'package:bookly/features/splash/presentation/view/splash_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/details/presentation/view/details_page.dart';
import '../../features/home/presentation/view/home_page.dart';
class AppRouters{
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: kHomePageRoute,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kDetailsPageRoute,
        builder: (context, state) => const DetailsPage(),
      ),
      GoRoute(
        path: kSearchPageRoute,
        builder: (context, state) => const SearchPage(),
      ),
    ],
  );
}