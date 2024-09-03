import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/completeApi.dart';

part 'complete_state.dart';

class CompleteCubit extends Cubit<CompleteState> {
  CompleteCubit() : super(CompleteInitial());

  Future<void> completeCubit({
    required String email,
    required String password,
    required String confirm_password,
    required String f_name,
    required String l_name,
    required String phone,
    required String otp,
  }) async {
    emit(CompleteLoading());
    try {
      String result = await sendDataToApi(
        email: email,
        password: password,
        f_name: f_name,
        l_name: l_name,
        confirm_password: confirm_password,
        phone: phone,
        otp: otp,
      );

      if (result == 'success') {
        emit(CompleteLoaded(message: 'success'));
      } else {
        emit(CompleteError('Failed to Complete'));
      }
    } catch (e) {
      emit(CompleteError(e.toString()));
    }
  }
}
