part of 'complete_cubit.dart';

@immutable
sealed class CompleteState {}

final class CompleteInitial extends CompleteState {}
final class CompleteError extends CompleteState {

  String message;
  CompleteError(this.message);
}

final class CompleteLoading extends CompleteState {

}
final class CompleteLoaded extends CompleteState {    
  String message;
  CompleteLoaded({required this.message});
}