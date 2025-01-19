part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoaded extends SimilarBooksState {}

final class SimilarBooksFaillur extends SimilarBooksState {
  final String errorMessage;

  const SimilarBooksFaillur({required this.errorMessage});
}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;

  const SimilarBooksSuccess({required this.books});
}
