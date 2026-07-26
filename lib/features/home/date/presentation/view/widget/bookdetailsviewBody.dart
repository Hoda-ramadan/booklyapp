import 'package:bookly_app/features/home/date/presentation/view/widget/custombookdetailsappbar.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [customBookdetailsAppbar()]),
    );
  }
}
