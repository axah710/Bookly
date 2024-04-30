import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

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
      ],
    );
  }
}


