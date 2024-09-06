import 'package:booklyapp/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Title",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            "Sub Title",
            style: Styles.textStyle20.copyWith(color: Colors.grey),
          ),
          const SizedBox(
            height: 16,
          ),
          const BookRating(),
          const SizedBox(
            height: 40,
          ),
          const BooksAction()

          //   const SizedBox(
          //     height: 50,
          //   ),
          //   const Text(
          //     "You can also like ",
          //     style: Styles.textStyle18,
          //   ),
          //   const SizedBox(
          //     height: 10,
          //   ),
          //   const AuthersBooksListView(),
          // ],
        ],
      ),
    );
  }
}

// class AuthersBooksListView extends StatelessWidget {
//   const AuthersBooksListView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => const CustomBookImage(),
//         itemCount: 10,
//       ),
//     );
//   }
// }