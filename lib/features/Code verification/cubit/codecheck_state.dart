part of 'codecheck_cubit.dart';

@immutable
sealed class CodecheckState {}

final class CodecheckInitial extends CodecheckState {}

final class CodecheckError extends CodecheckState {
  String message;
  CodecheckError(this.message);
}

final class CodecheckLoading extends CodecheckState {}

final class CodecheckLoaded extends CodecheckState {

   final String result;

  CodecheckLoaded({required this.result});
}
