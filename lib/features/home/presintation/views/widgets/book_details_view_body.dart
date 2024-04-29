import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 27,
      ),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.21,
            ),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 17,
          ),
          Text(
            "The Jungle Book",
            style: Styels.textStyle33.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(
            height: 5.1,
          ),
          Opacity(
            opacity: 0.70,
            child: Text(
              "Rudyard Kipling",
              style: Styels.textStyle20.copyWith(
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18.9,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
