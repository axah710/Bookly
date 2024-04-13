import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // Why Stretch ? to let the image take all the width available...
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        const SizedBox(
          height: 7,
        ),
        const Text(
          "Read Free Books",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
