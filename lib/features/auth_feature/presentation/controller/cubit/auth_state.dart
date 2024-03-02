part of 'auth_cubit.dart';

class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoadindState extends AuthState {}

class AuthSuccessState extends AuthState {
  final AuthModel authModel;

  AuthSuccessState({required this.authModel});
}

class AuthErrorState extends AuthState {
  final String errmessage;

  AuthErrorState({required this.errmessage});
}

class AuthRegisterSuccessState extends AuthState {
  final AuthModel authModel;

  AuthRegisterSuccessState({required this.authModel});
}

class AuthRegistorErrorState extends AuthState {
  final String errmessage;

  AuthRegistorErrorState({required this.errmessage});
}
