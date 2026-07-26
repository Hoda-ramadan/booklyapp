import 'package:bookly_app/core/utalts/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 17,
          ),
        ),
        const SizedBox(width: 6.3),
        Text("4.8", style: Style.textstyle16),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text("(2340)", style: Style.textstyle14.copyWith()),
        ),
      ],
    );
  }
}
