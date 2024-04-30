import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

import 'similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You Can Also Like ",
          style: Styels.textStyle16.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          height: 16.8,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}