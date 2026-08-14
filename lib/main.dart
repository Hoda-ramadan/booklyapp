import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utalts/apiServies.dart';
import 'package:bookly_app/core/utalts/go_route.dart';
import 'package:bookly_app/core/utalts/servise_locator.dart';
import 'package:bookly_app/features/home/date/NewsBooksCubit/home_cubit.dart';
import 'package:bookly_app/features/home/date/cubit%20copy/home_cubit.dart';
import 'package:bookly_app/features/home/date/home_repo/homerepoimplement.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupLocator();
  runApp(const Bookly_App());
}

class Bookly_App extends StatelessWidget {
  const Bookly_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturebookCubit(getIt.get<Homerepoimplement>()),
        ),
        BlocProvider(
          create: (context) => NewsbookCubit(getIt.get<Homerepoimplement>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Approuter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimarycolor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
