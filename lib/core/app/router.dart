import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:template_application/data/provider/user_provider.dart';
import 'package:template_application/data/repository/user_repository.dart';
import 'package:template_application/logic/bloc/user_bloc/user_bloc.dart';

import '../../logic/cubit/tab_cubit.dart';
import '../../ui/pages/home_page.dart';
import '../../ui/pages/setting_page.dart';
import 'route_name.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteName.home.path,
  routes: [
    // Define HomePage route
    GoRoute(
      path: RouteName.home.path,
      builder: (BuildContext context, GoRouterState state) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => TabCubit(),
            ),
            BlocProvider(
              create: (context) => UserBloc(
                userRepository: UserRepository(
                  userProvider: UserProvider(),
                ),
              )..add(UserDetail()),
            ),
          ],
          child: const HomePage(),
        );
      },
    ),

    // Define Setting route
    GoRoute(
      path: RouteName.setting.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SettingPage();
      },
    ),

    // Define other routes, if needed
  ],
);
