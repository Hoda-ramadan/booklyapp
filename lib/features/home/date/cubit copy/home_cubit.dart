import 'package:bookly_app/features/home/date/FeatrueBookCubit/homeStates.dart';
import 'package:bookly_app/features/home/date/home_repo/homerepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturebookCubit extends Cubit<HomeBookState> {
  FeaturebookCubit(this.homerepo) : super(initHomeBook());
  final Homerepo homerepo;
  Future<void> fetchHomeBook() async {
    emit(LoadingHomeBook());
    var result = await homerepo.fatchfeturebooks();
    result.fold(
      (failure) {
        emit(FailureHomeBook(failure.errormassge));
      },
      (books) {
        emit(SucssesHomeBook(books));
      },
    );
  }
}
