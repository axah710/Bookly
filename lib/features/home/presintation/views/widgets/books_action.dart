import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.4,
      ),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: '10.99',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  16.8,
                ),
                bottomLeft: Radius.circular(
                  16.8,
                ),
              ),
            ),
          ),
          // Why expanded? to take width of the scree...
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(
                  context,
                  bookModel.volumeInfo.previewLink,
                );
              },
// It creates a Uri object by parsing the previewLink property of
//the bookModel.volumeInfo.
// It checks if the URL can be launched using the canLaunchUrl function.
//This function likely checks if the URL is valid and can be opened.
// If the URL can be launched, it then calls the launchUrl function to
// open the URL. This function likely opens the URL in the
//default browser or a web view.
              text: getText(bookModel),
              backgroundColor: const Color(
                0xffEF8262,
              ),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(
                  16.8,
                ),
                bottomRight: Radius.circular(
                  16.8,
                ),
              ),
              fontSize: 16.8,
            ),
          ),
        ],
      ),
    );
  }
}

getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink != null) {
    return "Not Available";
  } else {
    return "Preview Link";
  }
}
