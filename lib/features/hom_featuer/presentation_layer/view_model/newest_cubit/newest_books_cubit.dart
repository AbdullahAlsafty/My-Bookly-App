import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/core/utils/api_serveses.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/hom_repo_impementation.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit({required this.homeRepo}) : super(NewestBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> feachNewestBook() async {
    emit(NewestBooksLoadedState());

    var data = await homeRepo.feacnewstBooks();
    data.fold((failer) async {
      emit(NewestBooksFaillurState(errorMessage: failer.errorMessage));
    }, (books) async {
      emit(NewestBooksSuccessState(books: books));
    });
  }

  @override
  void onChange(Change<NewestBooksState> change) {
    print('====================================$change');
    super.onChange(change);
  }
}
