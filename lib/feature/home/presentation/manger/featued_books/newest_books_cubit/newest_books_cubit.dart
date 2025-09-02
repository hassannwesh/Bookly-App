import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoding());
    var result = await homeRepo.fetchFlutterNewsetBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
