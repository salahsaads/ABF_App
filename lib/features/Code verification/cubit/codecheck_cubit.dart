import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/chechApi.dart';

part 'codecheck_state.dart';

class CodecheckCubit extends Cubit<CodecheckState> {
  CodecheckCubit() : super(CodecheckInitial());

  Future<void> checkCubit({
    required String email,
    required String otp,
  }) async {
    emit(CodecheckLoading());

    try {
      String result = await check(email: email, otp: otp);
      emit(CodecheckLoaded(result: result));
    } catch (e) {
      emit(CodecheckError(e.toString()));
    }
  }
}
