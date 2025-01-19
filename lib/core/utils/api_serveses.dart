import 'package:dio/dio.dart';

class ApiServeses {
  final Dio dio;
  const ApiServeses({required this.dio});

  Future<Map<String, dynamic>> getBooksModel({required String url}) async {
    Response response = await dio.get(url);
    Map<String, dynamic> data = response.data;
    return data;
  }
}
