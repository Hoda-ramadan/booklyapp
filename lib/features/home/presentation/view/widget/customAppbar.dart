import 'package:bookly_app/core/utalts/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 40, bottom: 27),
      child: Row(
        children: [
          Image.asset(Assets.logoimagpath, height: 30),
          Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push("/search");
            },
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 25),
          ),
        ],
      ),
    );
  }
}
