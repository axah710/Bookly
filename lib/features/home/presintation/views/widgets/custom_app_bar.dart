import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 47.976,
        left: 26.4,
        right: 26.4,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 17.6,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(
                AppRouter.kSearchView,
              );
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20.9,
            ),
          ),
        ],
      ),
    );
  }
}
