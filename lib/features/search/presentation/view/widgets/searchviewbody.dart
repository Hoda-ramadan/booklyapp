import 'package:bookly_app/core/utalts/style.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/bestsellerlistviewitem.dart';
import 'package:bookly_app/features/search/presentation/view/widgets/customtextfeild.dart';
import 'package:flutter/material.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Customtextfeild(),
          SizedBox(height: 16),
          Text("Best Seller", style: Style.textstyle18),
          SizedBox(height: 16),
          SearchResultlist(),
        ],
      ),
    );
  }
}

class SearchResultlist extends StatelessWidget {
  const SearchResultlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
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
    ;
  }
}
