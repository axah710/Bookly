import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
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
          const SizedBox(
            height: 38.85,
          ),
          const BooksAction(),
          const SizedBox(
            height: 47.5,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You Can Also Like ",
              style: Styels.textStyle16.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 16.8,
          ),
          const SimilarBooksListView(),
          const SizedBox(
            height: 42,
          ),
        ],
      ),
    );
  }
}

