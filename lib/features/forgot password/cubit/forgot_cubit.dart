import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/forgot_api.dart';

part 'forgot_state.dart';

class ForgotCubit extends Cubit<ForgotState> {
  ForgotCubit() : super(ForgotInitial());

  Future<void> forgotPassword({
    required String email,
  }) async {
    emit(ForgotLoading());
    try {
      String result = await sendOtp(
        email: email,
      );
      if (result == 'success') {
        emit(ForgotLoaded());
      } else {
        emit(ForgotError('Failed to send email'));
      }
    } catch (e) {
      emit(ForgotError('An error occurred: $e'));
    }
  }
}
