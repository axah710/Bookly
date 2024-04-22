import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    const BooklyApp(),
  );
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
        // brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme,
          // To let the font knows that I work on dark mode...
        ),
      ),
    );
  }
}
