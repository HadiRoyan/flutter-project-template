import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_application/data/model/user.dart';
import 'package:template_application/data/repository/user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.userRepository}) : super(UserInitial()) {
    on<UserEvent>((event, emit) {});
    on<UserDetail>(
      (event, emit) async {
        emit(UserLoading());

        User? user = await userRepository.getDetailUser();
        if (user != null) {
          emit(UserSuccess(user: user));
        } else {
          emit(const UserError(message: 'Failed to fetch user'));
        }
      },
    );
  }

  final UserRepository userRepository;
}
