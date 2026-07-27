import 'package:bookly_app/core/utalts/style.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/samallerbooklistview.dart';
import 'package:flutter/material.dart';

class Similerbooks extends StatelessWidget {
  const Similerbooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "you can also like ",
            style: Style.textstyle14.copyWith(fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          SimillerListviewBooks(),
        ],
      ),
    );
  }
}
