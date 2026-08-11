import 'package:bookly_app/features/home/date/models/book_model/book_model.dart';

abstract class HomeBookState {
  const HomeBookState();
}

class initHomeBook extends HomeBookState {}

class LoadingHomeBook extends HomeBookState {}

class SucssesHomeBook extends HomeBookState {
  final List<BookModel> bookmodel;
  const SucssesHomeBook(this.bookmodel);
}

class FailureHomeBook extends HomeBookState {
  final String erorrmsg;
  const FailureHomeBook(this.erorrmsg);
}
