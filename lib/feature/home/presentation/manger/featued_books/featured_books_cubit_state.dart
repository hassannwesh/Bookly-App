part of 'featured_books_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}
final class FeaturedBooksCubitLoding extends FeaturedBooksCubitState {}
final class FeaturedBooksCubitSeccess extends FeaturedBooksCubitState {
  final List<BookModel> books;
  const FeaturedBooksCubitSeccess(this.books);
}
final class FeaturedBooksCubitFailure extends FeaturedBooksCubitState {
  final String errMessage;
  const FeaturedBooksCubitFailure(this.errMessage);
}
