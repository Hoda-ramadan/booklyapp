import 'package:flutter/material.dart';

class animatedBuilder extends StatelessWidget {
  const animatedBuilder({super.key, required this.sildanmation});

  final Animation<Offset> sildanmation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: sildanmation,
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: sildanmation,
          child: const Text("read free books", textAlign: TextAlign.center),
        );
      },
    );
  }
}
