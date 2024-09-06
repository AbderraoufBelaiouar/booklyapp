import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: "19.19 €",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () {},
            fontSize: 18,
            text: "Free preview",
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                16,
              ),
              bottomRight: Radius.circular(
                16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
