import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.198375,
      // The widget will have a height equal to approximately 19.8% of
      // the device's height, and it will contain a ListView.
      //builder as its child.
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.8,
            ),
            child: CustomBookImage(),
          );
        },
      ),
    );
  }
}
