import 'package:booklyapp/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            controller: TextEditingController(),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
