part of 'sing_up_cubit.dart';

@immutable
sealed class SingUpState {}

final class SingUpInitial extends SingUpState {}
final class SingUpError extends SingUpState {

  String message;
  SingUpError(this.message);
}
final class SingUpLoading extends SingUpState {}
final class SingUpLoaded extends SingUpState {}

