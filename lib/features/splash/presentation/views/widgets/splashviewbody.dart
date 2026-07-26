import 'package:bookly_app/features/splash/presentation/views/widgets/animatedbuilder.dart';
import 'package:bookly_app/core/utalts/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    super.initState();
    initstateanimation();
    navegattohome();
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

  void initstateanimation() {
    animatedController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    sildanmation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset(0, 0),
    ).animate(animatedController);
    animatedController.forward();
  }

  void navegattohome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push("/homeview");
    });
  }
}
