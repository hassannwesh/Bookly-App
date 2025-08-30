import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/data/models/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_cubit_state.dart';

class NewestBooksCubitCubit extends Cubit<NewestBooksCubitState> {
  NewestBooksCubitCubit(this.homeRepo) : super(NewestBooksCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksCubitLoding());
    var result = await homeRepo.fetchFlutterNewsetBooks();

    result.fold(
      (failure) {
        emit(NewestBooksCubitFailure(failure.errMessage));
      },
      (books) {
        emit(NewestBooksCubitSuccess(books));
      },
    );
  }
}
