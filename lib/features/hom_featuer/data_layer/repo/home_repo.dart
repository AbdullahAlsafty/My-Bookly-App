import 'package:dartz/dartz.dart';

import 'package:my_bookly/core/utils/errors/faillurs.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Faillurs, List<BookModel>>> feacnewstBooks();
  Future<Either<Faillurs, List<BookModel>>> feachFeatureBooks();
  Future<Either<Faillurs, List<BookModel>>> feachSimilarBooks();
}
