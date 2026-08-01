import 'package:bookly_app/core/errors/home_error.dart';
import 'package:bookly_app/features/home/date/home_repo/homerepo.dart';
import 'package:bookly_app/features/home/date/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepoimplement extends Homerepo {}

Future<Either<HomeError, List<BookModel>>> fatchbestsellerbooks() {}
Future<Either<HomeError, List<BookModel>>> fatchfeturebooks() {}
