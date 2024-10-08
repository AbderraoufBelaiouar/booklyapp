import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "You can also like ",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
