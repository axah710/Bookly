import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(
            0xffFFDD4F,
          ),
        ),
        const SizedBox(
          width: 6.615,
        ),
        const Text(
          "4.8",
          style: Styels.textStyle18,
        ),
        const SizedBox(
          width: 5.25,
        ),
        Text(
          "(245)",
          style: Styels.textStyle16.copyWith(
            color: const Color(
              0xff707070,
            ),
          ),
        )
      ],
    );
  }
}
