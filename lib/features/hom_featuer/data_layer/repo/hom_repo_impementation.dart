import 'package:dartz/dartz.dart';

import 'package:my_bookly/core/utils/api_serveses.dart';

import 'package:my_bookly/core/utils/errors/faillurs.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/home_repo.dart';

class HomRepoImpementation implements HomeRepo {
  @override
  Future<Either<Faillurs, List<BookModel>>> feacnewstBooks() async {
    try {
      var data = await ApiServeses().getBooksModel(
          endPoint: 'volumes?Filtering=free-ebooks&q=supject:programming');
      List<BookModel> allBooks = [];
      for (var element in data['items']) {
        allBooks.add(BookModel.fromJsonVz(element));
      }
      return right(allBooks);
    } catch (e) {
      return left(ServerFaillur());
    }
  }

  @override
  Future<Either<Faillurs, List<BookModel>>> feachFeatureBooks() async {
    return left(ServerFaillur());
  }
}
