part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginError extends LoginState {

  String message;
  LoginError(this.message);
}

final class LoginLoading extends LoginState {}
final class LoginLoaded extends LoginState {}