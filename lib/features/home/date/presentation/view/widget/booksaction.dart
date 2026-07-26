import 'package:bookly_app/features/home/date/presentation/view/widget/custombuttom.dart';
import 'package:flutter/material.dart';

class Booksaction extends StatelessWidget {
  const Booksaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: Custombuttom(
              text: "19.99&",
              textcolor: Colors.black,
              backgraundcolor: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                topLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: Custombuttom(
              fontsize: 16,
              text: "free preview",
              textcolor: Colors.white,
              backgraundcolor: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
