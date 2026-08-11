import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class HomeError {
  final String errormassge;
  HomeError(this.errormassge);
}

class Servererror extends HomeError {
  Servererror(super.errormassge);
  factory Servererror.fromDioError(DioError dioerorr) {
    switch (dioerorr.type) {
      case DioExceptionType.connectionTimeout:
        return Servererror("Connection Timeout with apiserves");
      case DioExceptionType.sendTimeout:
        return Servererror("Send Timeout with apiserves");
      case DioExceptionType.receiveTimeout:
        return Servererror("Receive Timeout with apiserves");

      case DioExceptionType.badResponse:
        return Servererror.fromResponse(
          dioerorr.response!.statusCode,
          dioerorr.response!.data,
        );
      case DioExceptionType.cancel:
        return Servererror("Recust to ApiServes was cansel");
      case DioExceptionType.connectionError:
        return Servererror("there was no intrnet plase try again");

      case DioExceptionType.unknown:
        return Servererror("unknown erorr plase try again");
      case DioExceptionType.transformTimeout:
        return Servererror("transform Timeout with apiserves");
      case DioExceptionType.badCertificate:
        return Servererror("badCertificate erorr");
      default:
        return Servererror("O0pps There was an error,plase try again");
    }
  }
  factory Servererror.fromResponse(int? statecode, dynamic response) {
    if (statecode == 400 || statecode == 401 || statecode == 402) {
      return Servererror(response['error']['massage']);
    } else if (statecode == 404) {
      return Servererror("method not fond");
    } else if (statecode == 500) {
      return Servererror("plase try again");
    } else {
      return Servererror("O0pps There was an error,plase try again");
    }
  }
}
