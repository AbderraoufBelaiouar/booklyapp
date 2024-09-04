import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 20,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 3,
        ),
        const Text(
          "4.9",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2323)",
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
