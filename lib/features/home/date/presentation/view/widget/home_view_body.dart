import 'package:bookly_app/features/home/date/presentation/view/widget/customAppbar.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/customlistviewItem.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Customappbar(), CustomListViewItem()]);
  }
}
