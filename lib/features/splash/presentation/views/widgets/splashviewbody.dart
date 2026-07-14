import 'package:bookly_app/utalts/assets.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logoimagpath),
        SizedBox(height: 4),
        const Text("read free books", textAlign: TextAlign.center),
      ],
    );
  }
}
