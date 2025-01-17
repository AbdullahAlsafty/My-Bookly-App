part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoadedState extends FeatureBooksState {}

final class FeatureBooksSuccessState extends FeatureBooksState {
  final List<BookModel> books;
  const FeatureBooksSuccessState({required this.books});
}

final class FeatureBooksFaillureState extends FeatureBooksState {
  final String errorMessage;
  const FeatureBooksFaillureState({required this.errorMessage});
}
