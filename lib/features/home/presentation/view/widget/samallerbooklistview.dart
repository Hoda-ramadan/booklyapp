import 'package:bookly_app/features/home/presentation/view/widget/feturelistviewitem.dart';
import 'package:flutter/material.dart';

class SimillerListviewBooks extends StatelessWidget {
  const SimillerListviewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Feturelistviewitem(),
            );
          },
        ),
      ),
    );
    ;
  }
}
