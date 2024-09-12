import 'package:booklyapp/Features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:booklyapp/Features/search/presentation/manager/search_books_cubit/search_books_state.dart';
import 'package:booklyapp/Features/search/presentation/views/widgets/custom_result_list_view_item.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder: (context, index) =>
                CustomResultListViewItem(book: state.books[index]),
          );
        } else if (state is SearchBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is SearchBooksLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
