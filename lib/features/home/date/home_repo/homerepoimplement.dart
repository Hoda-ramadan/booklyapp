import 'package:bookly_app/core/errors/home_error.dart';
import 'package:bookly_app/core/utalts/apiServies.dart';
import 'package:bookly_app/features/home/date/home_repo/homerepo.dart';
import 'package:bookly_app/features/home/date/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class Homerepoimplement extends Homerepo {
  final Apiservies apiservies;
  Homerepoimplement(this.apiservies);

  @override
  Future<Either<HomeError, List<BookModel>>> fatchNewsbooks() async {
    try {
      var data = await apiservies.get(
        endpoint:
            'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:programming',
      );
      List<BookModel> book = [];
      for (var item in data['items']) {
        book.add(BookModel.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioError) {
        return left(Servererror.fromDioError(e));
      }
      return left(Servererror(e.toString()));
    }
  }

  Future<Either<HomeError, List<BookModel>>> fatchfeturebooks() async {
    try {
      var data = await apiservies.get(
        endpoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );
      List<BookModel> book = [];
      for (var item in data['items']) {
        book.add(BookModel.fromJson(item));
      }
      return right(book);
    } catch (e) {
      if (e is DioError) {
        return left(Servererror.fromDioError(e));
      }
      return left(Servererror(e.toString()));
    }
  }
}
