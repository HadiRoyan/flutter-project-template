part of 'user_bloc.dart';

@immutable
sealed class UserState {
  final User? user;

  const UserState({this.user});
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserSuccess extends UserState {
  const UserSuccess({super.user});
}

final class UserError extends UserState {
  final String message;

  const UserError({required this.message});
}
