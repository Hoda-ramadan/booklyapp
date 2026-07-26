import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utalts/style.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/bookrating.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/custombookdetailsappbar.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/feturelistviewitem.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          customBookdetailsAppbar(),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: width * .2),
            child: Feturelistviewitem(),
          ),
          SizedBox(height: 46),
          Text(
            "The Jungle Book ",
            style: Style.textstyle30.copyWith(
              fontFamily: kGTsectrafine,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 6),
          Opacity(
            opacity: .8,
            child: Text(
              "The Jungle Book ",
              style: Style.textstyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(height: 18),
          Bookrating(mainAxisAlignment: MainAxisAlignment.center),
        ],
      ),
    );
  }
}
