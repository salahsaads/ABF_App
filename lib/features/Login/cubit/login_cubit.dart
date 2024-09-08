import 'package:abf_app/features/Login/data/loginApi.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginCubit({
    required String email,
    required String password,
  }) async {

    emit(LoginLoading());
    try {
      String result = await LoginApi(email: email, password: password);
      if (result == 'success') {
        emit(LoginLoaded());
      } else {
        emit(LoginError('Failed to login'));
      }
    } catch (e) {
      emit(LoginError('An error occurred: $e'));
    }
  }
}
