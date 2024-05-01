import 'package:bookly_app/features/home/presintation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presintation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presintation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashViewRoute = '/';
  static const String kHomeViewRoute = '/homeView';
  static const String kBookDetailsView = '/bookDetailsView';
  static const String kSearchView = '/searchView';

  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashViewRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeViewRoute,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
// This code snippet is an abstract class called 'AppRouter' 
//that defines constant string variables, such as'kSplashViewRoute' and
// 'kHomeViewRoute', which represent the routes for the splash view and
// home view respectively. It also includes a static final variable called 
//'router' which is an instance of the 'GoRouter' class. The 'GoRouter' is 
//configured with two routes, one for the splash view and one for the home view.
// It creates an instance of the 'GoRouter' class called 'router'.
// The 'GoRouter' is configured with two routes using the 'GoRoute' class. 
//Each route specifies a path and a builder function.
// The builder function is responsible for creating the corresponding view 
//for each route.
// The 'GoRouter' instance is assigned to the 'router' variable.
