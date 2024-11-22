import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_application/logic/bloc/user_bloc/user_bloc.dart';
import 'package:template_application/ui/components/profile_card.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Center(
          child: ProfileCard(
            user: state.user,
          ),
        );
      },
    );
  }
}
