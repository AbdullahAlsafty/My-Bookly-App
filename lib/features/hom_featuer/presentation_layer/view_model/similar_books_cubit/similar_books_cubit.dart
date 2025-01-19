import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/utils/errors/faillurs.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  final HomeRepo homeRepo;
  SimilarBooksCubit({required this.homeRepo}) : super(SimilarBooksInitial());
  Future<void> feachSimilarBooks({required String anyTitle}) async {
    emit(SimilarBooksLoaded());
    Either<Faillurs, List<BookModel>> data = await homeRepo.feachSimilarBooks();

    data.fold((Faillurs) {
      emit(SimilarBooksFaillur(errorMessage: Faillurs.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }

  @override
  void onChange(Change<SimilarBooksState> change) {
    print('======================= $change');
    super.onChange(change);
  }
}
