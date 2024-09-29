import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/ui/app_screen/app_body_cubit.dart';

import '../home_screen/home_screen.dart';
import '../list_screen/list_screen.dart';
import 'bottom_navigation_cubit.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBody();
  }
}

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  static const _bottomBarScreen = [HomeScreen(), ListScreen()];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BlocBuilder<AppBodyCubit, AppBodyState>(builder: (context, state) {
        return Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [state.start, state.stop])));
      }),
      SafeArea(
          child: Stack(children: [
        BlocBuilder<BottomNavigationCubit, int>(
          builder: (BuildContext context, state) {
            return AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: _bottomBarScreen[state]);
          },
        ),
        const Align(alignment: Alignment.bottomCenter, child: AppBottomBar())
      ]))
    ]);
  }
}

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        constraints: const BoxConstraints(maxWidth: 150),
        child:
            BlocBuilder<BottomNavigationCubit, int>(builder: (context, state) {
          if (state == 0) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.home, color: Colors.pink, size: 30)),
                IconButton(
                    onPressed: () =>
                        context.read<BottomNavigationCubit>().onItemClick(1),
                    icon: const Icon(Icons.list,
                        color: Colors.blueGrey, size: 30)),
              ],
            );
          } else {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () =>
                        context.read<BottomNavigationCubit>().onItemClick(0),
                    icon: const Icon(Icons.home, color: Colors.grey, size: 30)),
                const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.list, color: Colors.cyan, size: 30)),
              ],
            );
          }
        }));
  }
}
