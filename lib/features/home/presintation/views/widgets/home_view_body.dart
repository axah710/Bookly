import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 17.6,
          ),
          child: Text(
            "Best Seller",
            style: Styels.titleMedium,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}
