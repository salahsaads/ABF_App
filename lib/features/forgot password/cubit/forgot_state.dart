part of 'forgot_cubit.dart';

@immutable
sealed class ForgotState {}

final class ForgotInitial extends ForgotState {}

final class ForgotError extends ForgotState {
  String message;
  ForgotError(this.message);
}
final class ForgotLoading extends ForgotState {}
final class ForgotLoaded extends ForgotState {}
