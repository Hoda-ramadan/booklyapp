import 'package:bookly_app/core/utalts/style.dart';
import 'package:flutter/material.dart';

class Custombuttom extends StatelessWidget {
  const Custombuttom({
    super.key,
    required this.textcolor,
    required this.backgraundcolor,
    required this.borderRadius,
    required this.text,
    this.fontsize,
  });
  final Color textcolor, backgraundcolor;
  final BorderRadius borderRadius;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backgraundcolor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: Style.textstyle18.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
