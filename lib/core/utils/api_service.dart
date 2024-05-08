import 'package:dio/dio.dart';

class ApiService {
  String baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio dio;

  ApiService(this.dio);
  Future<Map<String, dynamic>> get(String endPoint) async {
    var response = await dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
