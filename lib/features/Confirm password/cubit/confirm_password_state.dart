part of 'confirm_password_cubit.dart';

@immutable
sealed class ConfirmPasswordState {}

final class ConfirmPasswordInitial extends ConfirmPasswordState {}

final class ConfirmPasswordError extends ConfirmPasswordState {
  String message;
  ConfirmPasswordError(this.message);
}

final class ConfirmPasswordLoading extends ConfirmPasswordState {}

final class ConfirmPasswordLoaded extends ConfirmPasswordState {}
