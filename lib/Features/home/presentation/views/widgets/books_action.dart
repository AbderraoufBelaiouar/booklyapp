import 'package:booklyapp/Features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            onPressed: () {},
            text: "Free",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButton(
            onPressed: () async {
              final Uri _url = Uri.parse(bookModel.volumeInfo.infoLink!);
              if (await canLaunchUrl(_url)) {
                await launchUrl(_url);
              }
            },
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
