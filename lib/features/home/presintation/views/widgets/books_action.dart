import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.4,
      ),
      child: Row(
        children: [
          Expanded(
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
              text: 'Free Preview',
              backgroundColor: Color(
                0xffEF8262,
              ),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
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
