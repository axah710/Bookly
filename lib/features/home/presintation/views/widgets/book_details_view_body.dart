import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/books_action.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          // In the context of BookDetailsViewBody, SliverFillRemaining
          //is used to make sure that the content, which includes various
          //widgets like CustomBookDetailsAppBar, CustomBookImage, and others,
          // either exactly fills the available vertical space when there isn't
          //enough content to naturally scroll, or becomes scrollable if the
          //content overflows the screen height. This approach provides
          //a flexible layout that adjusts nicely to different screen sizes
          //and orientations, ensuring that the UI remains visually appealing
          //and functionally practical across devices.
          hasScrollBody: false,
          // To avoid multi scroll views, hasScrollBody is set to false.
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 27,
            ),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const BooksAction(),
                const Expanded(
                  child: SizedBox(
                    height: 47.5,
                  ),
                ),
                // Take at least 47.5 hieght and if you have more than 47.5 height
                // take it...
                //  to create a flexible layout where the SizedBox
                // takes up all the remaining vertical space.
                //The Expanded widget ensures that the SizedBox expands
                // to fill the available space.
                const SimilarBooksSection(),
                const SizedBox(
                  height: 42,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
