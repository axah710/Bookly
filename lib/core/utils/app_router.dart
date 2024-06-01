import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implemintation.dart';
import 'package:bookly_app/features/home/presintation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presintation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presintation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presintation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImplemintation>(),
          ),
          // Here we have provided the cubit to only this screen...
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
            // The BookDetailsView widget is being instantiated with a
            // bookModel parameter. The state.extra is being cast as a BookModel
            // type and passed to the bookModel parameter of the BookDetailsView.
            // This indicates that the BookDetailsView widget expects a BookModel
            // object to be provided when it is created.
          ),
        ),
      ),
      // This code defines a route for the 'kBookDetailsView' path
      // using the GoRoute class. It sets up a builder function that
      // creates a BlocProvider widget. Inside the BlocProvider, a
      //SimilarBooksCubit is created with getIt.get<HomeRepoImplemintation>()
      // as a parameter. This SimilarBooksCubit is then provided to the
      //BookDetailsView widget as a child. This setup ensures that the
      //SimilarBooksCubit is only available to the BookDetailsView screen.
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
