import 'package:bookly_app/features/splash/presentation/views/widgets/animatedbuilder.dart';
import 'package:bookly_app/utalts/assets.dart';
import 'package:flutter/material.dart';

class Splashviewbody extends StatefulWidget {
  const Splashviewbody({super.key});

  @override
  State<Splashviewbody> createState() => _SplashviewbodyState();
}

class _SplashviewbodyState extends State<Splashviewbody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedController;
  late Animation<Offset> sildanmation;

  @override
  void initState() {
    animatedController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 20),
    );
    super.initState();
    sildanmation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset(0, 0),
    ).animate(animatedController);
    animatedController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logoimagpath),

        SizedBox(height: 4),
        animatedBuilder(sildanmation: sildanmation),
      ],
    );
  }
}
