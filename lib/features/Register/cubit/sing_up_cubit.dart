import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/network_api.dart';

part 'sing_up_state.dart';

class SingUpCubit extends Cubit<SingUpState> {
  SingUpCubit() : super(SingUpInitial());
  String? result = '';
  Future<void> SingUpcubit({
    required String email,
  }) async {
    emit(SingUpLoading());
    try {
      result = await ApiSignUp().signUp(
        email: email,
      );

      if (result == 'User SignUp') {
        emit(SingUpLoaded());
      } else {
        emit(SingUpError('Failed to sign up'));
      }
    } catch (e) {
      emit(SingUpError('An error occurred: $e'));
    }
  }
}
