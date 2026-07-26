import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/home/date/presentation/view/widget/bookrating.dart';
import 'package:bookly_app/core/utalts/assets.dart';
import 'package:bookly_app/core/utalts/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Bestsellerlistviewitem extends StatelessWidget {
  const Bestsellerlistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push("/bookdetailsview");
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(Assets.testimage),
              ),
            ),
            const SizedBox(width: 30),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Jungle Book ",
                      style: Style.textstyle20.copyWith(
                        fontFamily: kGTsectrafine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text("J.K. Rowling", style: Style.textstyle14),
                    const SizedBox(height: 3),
                    Row(
                      children: [
                        Text(
                          "19.99&",
                          style: Style.textstyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Bookrating(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
