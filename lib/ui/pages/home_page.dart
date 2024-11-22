import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/app/route_name.dart';
import '../../logic/cubit/tab_cubit.dart';
import '../tabs/explore_tab.dart';
import '../tabs/home_tab.dart';
import '../tabs/profile_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _tabs = [
    const HomeTab(),
    const ExploreTab(),
    const ProfileTab(),
  ];

  void _onItemTapped(int index) {
    context.read<TabCubit>().setTabIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabCubit, int>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Flutter App'),
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueAccent,
            actions: state == 2
                ? [
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () => context.push(RouteName.setting.path),
                    ),
                  ]
                : [],
          ),
          body: _tabs[state],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state,
            onTap: _onItemTapped,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
            ],
          ),
        );
      },
    );
  }
}
