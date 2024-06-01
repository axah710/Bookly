import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.21,
          ),
          // This width is then used to dynamically set the horizontal
          // padding of the CustomBookImage widget within the
          //BookDetailsViewBody. By using a fraction of the screen's
          //width (width * 0.21), the layout can adapt to different
          // screen sizes, ensuring that the UI looks
          //consistent across devices.
          child: CustomBookImage(
            urlImage:
                bookModel.volumeInfo.imageLinks?.thumbnail ?? kDefaultImage,
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          bookModel.volumeInfo.title ?? 'No Title',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
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
            bookModel.volumeInfo.authors?[0] ?? 'No Author',
            textAlign: TextAlign.center,
            style: Styels.textStyle20.copyWith(
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18.9,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0.0,
          count: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(
          height: 38.85,
        ),
      ],
    );
  }
}
