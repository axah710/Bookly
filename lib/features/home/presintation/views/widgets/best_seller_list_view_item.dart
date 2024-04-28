import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/home/presintation/views/widgets/book_rating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 17.6,
        ),
        child: SizedBox(
          height: 131.25,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.43 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.4),
                    color: const Color(0xfffebda6),
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.testImage),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                        "Harry Potter And The Goblet",
                        style: Styels.textStyle20.copyWith(
                          fontFamily: kGtSectraFine,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3.3,
                    ),
                    const Text(
                      "J.K. Rowling",
                      style: Styels.textStyle16,
                    ),
                    const SizedBox(
                      height: 3.3,
                    ),
                    Row(
                      children: [
                        Text(
                          "19.99 €",
                          style: Styels.textStyle22.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        const BookRating(),
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
