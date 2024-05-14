import 'package:dio/dio.dart';

class ApiService {
  String baseUrl = "https://www.googleapis.com/books/v1/";
  final Dio _dio;

  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$baseUrl$endPoint");
    return response.data;
  }
}
// Retuerned data type most of the time Map<String, dynamic> "JSON"...
