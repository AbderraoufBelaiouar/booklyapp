// import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const Text(
          "read book for free",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
