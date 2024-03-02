import 'package:bloc/bloc.dart';
import 'package:crootie_store/core/utils/api_server.dart';
import 'package:crootie_store/features/auth_feature/data/models/auth_model.dart';
import 'package:crootie_store/features/auth_feature/data/repository/Auth_repository.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.apiService, this.authRepo) : super(AuthInitial());

  final ApiService apiService;
  final AuthRepo authRepo;

  Future<void> loginUser(String username, String password) async {
    emit(AuthLoadindState());
    var data = await authRepo.onlogin(username: username, password: password);
    data.fold((err) {
      emit(AuthErrorState(errmessage: err.errMessage));
    }, (data) {
      emit(AuthSuccessState(authModel: data));
    });
  }

  Future<void> RegisterUser(
      String username, String password, String phone, String email) async {
    emit(AuthLoadindState());
    var data = await authRepo.onRegister(
        username: username, password: password, phone: phone, email: email);
    data.fold((err) {
      emit(AuthRegistorErrorState(errmessage: err.errMessage));
    }, (data) {
      emit(AuthRegisterSuccessState(authModel: data));
    });
  }
}
