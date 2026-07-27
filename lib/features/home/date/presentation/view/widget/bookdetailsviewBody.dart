import 'package:bookly_app/features/home/date/presentation/view/widget/bookdetailssction.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/custombookdetailsappbar.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/similer_books_section.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 30),
            child: Column(
              children: [
                customBookdetailsAppbar(),
                BookDetailssction(),

                Expanded(child: SizedBox(height: 50)),
                Similerbooks(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
