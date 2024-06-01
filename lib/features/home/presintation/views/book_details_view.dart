import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presintation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
      category: widget.bookModel.volumeInfo.categories![0],
    );
    // Triggring the cubit initially to fetch the similar books in the screen ...
    super.initState();
  }
  //  the fetchSimilarBooks method of SimilarBooksCubit is being called using
  // BlocProvider.of<SimilarBooksCubit>(context). This triggers the cubit to
  // fetch similar books when the screen is initialized.
  // This code is a common practice in Flutter applications
  //using the Bloc library. It ensures that the necessary data
  //is fetched and initialized when the screen is first loaded.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(
          bookModel: widget.bookModel,
        ),
      ),
    );
  }
}
