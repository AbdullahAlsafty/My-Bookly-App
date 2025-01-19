import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/home_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit({required this.homeRepo}) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;

  Future<void> feachFeatureBooks() async {
    emit(FeatureBooksLoadedState());

    var data = await homeRepo.feachFeatureBooks();
    data.fold((failer) async {
      emit(FeatureBooksFaillureState(errorMessage: failer.errorMessage));
    }, (books) async {
      emit(FeatureBooksSuccessState(books: books));
    });
  }

  @override
  void onChange(Change<FeatureBooksState> change) {
    print('====================================$change');
    super.onChange(change);
  }
}
