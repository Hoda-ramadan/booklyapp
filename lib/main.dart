import 'package:bookly_app/const.dart';
import 'package:bookly_app/features/splash/presentation/views/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Bookly_App());
}

class Bookly_App extends StatelessWidget {
  const Bookly_App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimarycolor),
      home: Splashview(),
    );
  }
}
