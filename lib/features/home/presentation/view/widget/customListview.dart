import 'package:bookly_app/features/home/presentation/view/widget/feturelistviewitem.dart';
import 'package:flutter/material.dart';

class Customlistview extends StatelessWidget {
  const Customlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Feturelistviewitem(),
        );
      },
    );
  }
}
