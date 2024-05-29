import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implemintation.dart';
import 'package:bookly_app/features/home/presintation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presintation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
// this line registers the service locator ...
  runApp(
    const BooklyApp(),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImplemintation>(),
          )..fetchFeaturedBooks(),
          // .. Means triggr function immediately after create the cubit...
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRepoImplemintation>(),
          )..fetchNewsetBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Bookly App',
        theme: ThemeData(
          //colorScheme: This defines the color scheme for the app. In this
          //case, it's set to a dark color scheme.
          // useMaterial3: This specifies whether to use Material 3 design.
          // scaffoldBackgroundColor: This sets the background color of the
          //scaffold. In this case, it's set to kPrimaryColor.
          // textTheme: This defines the text theme for the app. It uses the
          //Montserrat font family and applies it to the dark text theme.
          colorScheme: const ColorScheme.dark(),
          // iconButtonTheme: const IconButtonThemeData(
          //   style: ButtonStyle(
          //     iconColor: MaterialStatePropertyAll(
          //       Colors.white,
          //     ),
          //   ),
          // ),
          // brightness: Brightness.dark,
          useMaterial3: true,
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
            // To let the font knows that I work on dark mode...
          ),
        ),
      ),
    );
  }
}
