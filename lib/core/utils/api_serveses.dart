import 'package:dio/dio.dart';

class ApiServeses {
  String baseurl = 'https://www.googleapis.com/books/v1/';
  Dio diov = Dio();

  Future<Map<String, dynamic>> getBooksModel({required String endPoint}) async {
    Response response = await diov.get('$baseurl$endPoint ');
    Map<String, dynamic> data = response.data;
    return data;
  }
}
