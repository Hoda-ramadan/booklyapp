import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildoutlineInputBorder(),
        focusedBorder: buildoutlineInputBorder(),
        hint: Text("Search"),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Opacity(
            opacity: .7,
            child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildoutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
