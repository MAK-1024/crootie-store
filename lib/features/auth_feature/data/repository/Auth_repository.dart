import 'package:crootie_store/core/error/faluire_server.dart';
import 'package:crootie_store/core/utils/api_server.dart';
import 'package:crootie_store/features/auth_feature/data/models/auth_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class AuthRepo {
  final ApiService apiService;

  AuthRepo({required this.apiService});

  Future<Either<Failure, AuthModel>> onlogin(
      {required String username, required String password}) async {
    try {
      var data = await apiService.postLogin(
          endPoint: "login", username: username, password: password);
//molkmojopj
      AuthModel a = AuthModel.fromJson(data);
      return Right(a);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(
        e.toString(),
      ));
    }
  }

  Future<Either<Failure, AuthModel>> onRegister(
      {required String username,
      required String password,
      required String email,
      required String phone}) async {
    try {
      var data = await apiService.postResgister(
          endPoint: "signup",
          username: username,
          password: password,
          email: email,
          phone: phone);

      AuthModel a = AuthModel.fromJson(data);
      return Right(a);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(
        e.toString(),
      ));
    }
  }
}
