import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'http://localhost:3000/';
  final Dio _dio;

  ApiService(this._dio) {}

  Future<dynamic> postLogin(
      {required String endPoint,
      required String username,
      required String password}) async {
    var response = await _dio.post('http://192.168.10.64:3000/login',
        data: {"username": username, "password": password},
        options: Options(
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}));
    return response.data;
  }

  Future<dynamic> postResgister({
    required String endPoint,
    required String username,
    required String password,
    required String email,
    required String phone,
  }) async {
    var response = await _dio.post('http://192.168.10.64:3000/signup',
        data: {
          "username": username,
          "password": password,
          "email": email,
          "phone": phone
        },
        options: Options(
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}));
    return response.data;
  }
}
