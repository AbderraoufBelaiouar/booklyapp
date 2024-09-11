import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BooksDetailsSection(
                  bookModel: bookModel,
                ),
                // const Expanded(
                //   child: SizedBox(
                //     height: 20,
                //   ),
                // ),
                const SimilarBooksSection()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
