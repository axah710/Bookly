import 'package:bookly_app/features/home/presintation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 40,
        horizontal: 24,
      ),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
