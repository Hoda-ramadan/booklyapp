import 'package:bookly_app/core/utalts/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 24,
          ),
        ),
        const SizedBox(width: 6.3),
        Text("4.8", style: Style.textstyle16),
        const SizedBox(width: 5),
        Text(
          "(2340)",
          style: Style.textstyle14.copyWith(color: Color(0xff707070)),
        ),
      ],
    );
  }
}
