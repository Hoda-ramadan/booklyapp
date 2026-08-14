import 'package:bookly_app/core/utalts/apiServies.dart';
import 'package:bookly_app/features/home/date/home_repo/homerepoimplement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<Apiservies>(Apiservies(Dio()));
  getIt.registerSingleton<Homerepoimplement>(
    Homerepoimplement(getIt.get<Apiservies>()),
  );
}
