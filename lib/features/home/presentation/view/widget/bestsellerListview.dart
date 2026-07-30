import 'package:bookly_app/features/home/presentation/view/widget/bestsellerlistviewitem.dart';
import 'package:flutter/material.dart';

class Bestsellerlistview extends StatelessWidget {
  const Bestsellerlistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (contxt, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Bestsellerlistviewitem(),
          );
        },
      ),
    );
  }
}
