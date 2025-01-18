import 'package:dio/dio.dart';

class ApiServeses {
  Dio diov = Dio();

  Future<Map<String, dynamic>> getBooksModel({required String url}) async {
    Response response = await diov.get(url);
    Map<String, dynamic> data = response.data;
    return data;
  }
}
