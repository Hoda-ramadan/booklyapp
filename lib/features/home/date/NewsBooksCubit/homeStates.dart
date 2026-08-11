import 'package:bookly_app/features/home/date/models/book_model/book_model.dart';

abstract class NewsBookState {
  const NewsBookState();
}

class initNewsBook extends NewsBookState {}

class LoadingNewsBook extends NewsBookState {}

class SucssesNewsBook extends NewsBookState {
  final List<BookModel> bookmodel;
  const SucssesNewsBook(this.bookmodel);
}

class FailureNewsBook extends NewsBookState {
  final String erorrmsg;
  const FailureNewsBook(this.erorrmsg);
}
