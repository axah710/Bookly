import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/custom_book_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kBookDetailsView,
          extra: bookModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 17.6,
        ),
        child: SizedBox(
          height: 131.25,
          child: Row(
            children: [
              CustomBookImage(
                urlImage:
                    bookModel.volumeInfo.imageLinks?.thumbnail ?? kDefaultImage,
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        bookModel.volumeInfo.title!,
                        style: Styels.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3.3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styels.textStyle16,
                    ),
                    const SizedBox(
                      height: 3.3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: Styels.textStyle22.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        BookRating(
                          count: bookModel.volumeInfo.ratingsCount ?? 2,
                          rating: bookModel.volumeInfo.averageRating ?? 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// SizedBox: This widget is used to give its child a specific size. The height
// property of the SizedBox is set to 30% of the total screen height. This is 
//achieved by MediaQuery.of(context).size.height * 0.3. MediaQuery is a widget 
//that provides information about the media (like screen size) in which the app 
//is being run.
