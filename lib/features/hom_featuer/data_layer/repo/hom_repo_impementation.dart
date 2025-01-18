import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:my_bookly/core/utils/api_serveses.dart';

import 'package:my_bookly/core/utils/errors/faillurs.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/home_repo.dart';

class HomRepoImpementation implements HomeRepo {
  @override
  Future<Either<Faillurs, List<BookModel>>> feacnewstBooks() async {
    try {
      Map<String, dynamic> data = await ApiServeses().getBooksModel(
          url:
              'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&sorting=newest&q=supject:programming');
      List<BookModel> allBooks = [];
      for (Map<String, dynamic> element in data['items']) {
        allBooks.add(BookModel.fromJsonVz(element));
      }
      return right(allBooks);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFaillur.fromDioError(e));
      }
      return left(ServerFaillur(
          errorMessage:
              'Exception Error caused by something other than the Dio ..........\n ${e.toString()}'));
    }
  }

  @override
  Future<Either<Faillurs, List<BookModel>>> feachFeatureBooks() async {
    try {
      Map<String, dynamic> data = await ApiServeses().getBooksModel(
          url:
              'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=supject:programming');
      List<BookModel> allBooks = [];
      for (Map<String, dynamic> element in data['items']) {
        allBooks.add(BookModel.fromJsonVz(element));
      }
      return right(allBooks);
    } catch (e) {
      if (e is DioError) {}
      return left(ServerFaillur(
          errorMessage:
              'Exception Error caused by something other than the Dio ..........\n ${e.toString()}'));
    }
  }
}
