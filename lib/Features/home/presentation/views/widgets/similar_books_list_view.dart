import 'package:booklyapp/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomBookImage(
                imageUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
              ),
              itemCount: state.books.length,
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
