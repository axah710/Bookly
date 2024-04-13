import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/splash/presintation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookly App',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
        // brightness: Brightness.dark,
      ).copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
