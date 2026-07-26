import 'package:bookly_app/core/utalts/assets.dart';
import 'package:flutter/material.dart';

class Feturelistviewitem extends StatelessWidget {
  const Feturelistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: DecorationImage(image: AssetImage(Assets.testimage)),
          ),
        ),
      ),
    );
  }
}
