import 'package:bookly_app/features/home/date/NewsBooksCubit/homeStates.dart';
import 'package:bookly_app/features/home/date/home_repo/homerepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsbookCubit extends Cubit<NewsBookState> {
  NewsbookCubit(this.homerepo) : super(initNewsBook());
  final Homerepo homerepo;
  Future<void> fetchNewsBook() async {
    emit(LoadingNewsBook());
    var result = await homerepo.fatchfeturebooks();
    result.fold(
      (failure) {
        emit(FailureNewsBook(failure.errormassge));
      },
      (books) {
        emit(SucssesNewsBook(books));
      },
    );
  }
}
