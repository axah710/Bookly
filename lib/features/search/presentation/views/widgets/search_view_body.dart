import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 17.6,
      ),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16.8,
          ),
          Text(
            "Search Result",
            style: Styels.textStyle20,
          ),
          SizedBox(
            height: 16.8,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
