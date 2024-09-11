import 'package:booklyapp/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Newest books",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: BestSellerListView(),
        ))
      ],
    );
  }
}
