import 'package:dio/dio.dart';

class Apiservies {
  final _baseURL = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  Apiservies(this.dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respons = await dio.get("$_baseURL$endpoint");
    return respons.data;
  }
}
