import 'package:bookly_app/features/home/date/presentation/view/widget/bestsellerlistviewitem.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/customAppbar.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/customListview.dart';
import 'package:bookly_app/utalts/style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customappbar(),
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: Customlistview(),
          ),
          SizedBox(height: 50),
          Text("Best Seller", style: Style.textstyle18),
          const SizedBox(height: 20),
          Bestsellerlistviewitem(),
        ],
      ),
    );
  }
}
