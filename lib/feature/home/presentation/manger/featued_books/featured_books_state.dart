
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksState {}

final class FeaturedBooksCubitLoding extends FeaturedBooksState {}

final class FeaturedBooksCubitSeccess extends FeaturedBooksState {
  final List<BookModel> books;
  const FeaturedBooksCubitSeccess(this.books);
}

final class FeaturedBooksCubitFailure extends FeaturedBooksState {
  final String errMessage;
  const FeaturedBooksCubitFailure(this.errMessage);
}
