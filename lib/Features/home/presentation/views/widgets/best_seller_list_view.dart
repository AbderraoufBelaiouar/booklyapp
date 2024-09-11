import 'package:booklyapp/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:booklyapp/Features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:booklyapp/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          if (state is NewestBooksSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) => BestSellerListViewItem(
                book: state.books[index],
              ),
            );
          } else if (state is NewestBooksFailure) {
            return CustomErrorWidget(errMessage: state.errMessage);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
