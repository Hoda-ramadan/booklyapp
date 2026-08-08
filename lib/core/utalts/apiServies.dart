import 'package:dio/dio.dart';

class Apiservies {
  final _baseURL = "https://www.googleapis.com/books/v1/";
  final Dio _dio;

  Apiservies(this._dio);
  Future<Map<String, dynamic>> get({required String endpoint}) async {
    var respons = await _dio.get("$_baseURL$endpoint");
    return respons.data;
  }
}
