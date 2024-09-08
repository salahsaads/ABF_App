import 'package:abf_app/features/Confirm%20password/data/ConfirmApi.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'confirm_password_state.dart';

class ConfirmPasswordCubit extends Cubit<ConfirmPasswordState> {
  ConfirmPasswordCubit() : super(ConfirmPasswordInitial());

  Future<void> confirmPassword({
    required String email,
    required String otp,
    required String password,
    required String password_confirmation,
  }) async {
    emit(ConfirmPasswordLoading());
    try {
      String result = await ResetPswApi().resetPassword(
        email: email,
        otp: otp,
        password: password,
        password_confirmation: password_confirmation,
      );
      if (result == 'success') {
        emit(ConfirmPasswordLoaded());
      } else {
        emit(ConfirmPasswordError('Failed to confirm password'));
      }
    } catch (e) {
      emit(ConfirmPasswordError('An error occurred: $e'));
    }
  }
}
