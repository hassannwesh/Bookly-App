part of 'newest_books_cubit.dart';

sealed class NewestBooksStates extends Equatable {
  const NewestBooksStates();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksStates {}

final class NewestBooksLoding extends NewestBooksStates {}

final class NewestBooksSuccess extends NewestBooksStates {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);
}

final class NewestBooksFailure extends NewestBooksStates {
  final String errMessage;
  const NewestBooksFailure(this.errMessage);
}
