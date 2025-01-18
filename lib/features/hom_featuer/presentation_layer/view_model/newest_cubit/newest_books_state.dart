part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitialState extends NewestBooksState {}

final class NewestBooksLoadedState extends NewestBooksState {}

final class NewestBooksSuccessState extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccessState({required this.books});
}

final class NewestBooksFaillurState extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFaillurState({required this.errorMessage});
}
