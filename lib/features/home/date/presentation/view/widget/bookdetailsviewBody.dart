import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utalts/style.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/bookrating.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/booksaction.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/customListview.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/custombookdetailsappbar.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/feturelistviewitem.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/samallerbooklistview.dart';
import 'package:flutter/material.dart';

class Bookdetailsviewbody extends StatelessWidget {
  const Bookdetailsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: customBookdetailsAppbar()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: width * .2),
              child: Feturelistviewitem(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 48)),
          SliverToBoxAdapter(
            child: Text(
              "The Jungle Book ",
              style: Style.textstyle30.copyWith(
                fontFamily: kGTsectrafine,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 6)),
          SliverToBoxAdapter(
            child: Opacity(
              opacity: .8,
              child: Text(
                "The Jungle Book ",
                style: Style.textstyle18.copyWith(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 18)),
          SliverToBoxAdapter(
            child: Bookrating(mainAxisAlignment: MainAxisAlignment.center),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 37)),
          SliverToBoxAdapter(child: Booksaction()),
          SliverToBoxAdapter(child: SizedBox(height: 50)),
          SliverToBoxAdapter(
            child: Text(
              "you can also like ",
              style: Style.textstyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: SimillerListviewBooks()),
          SliverToBoxAdapter(child: SizedBox(height: 40)),
        ],
      ),
    );
  }
}
