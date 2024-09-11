import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? "",
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          count: 10,
          rating: 10,
        ),
        const SizedBox(
          height: 40,
        ),
        const BooksAction(),
      ],
    );
  }
}
