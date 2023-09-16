import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
    Icons.brightness_1,
  ];

  void _homeRouting({required int index}) {
    _bottomNavIndex = index;
    final route = '/screen$index';
    context.go(route);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: const Center(
            child: Text("Home screen"),
          ),
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          activeColor: Colors.orange,
          inactiveColor: Colors.white,
          backgroundColor: Colors.black,
          height: 70,
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.none,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: (index) => _homeRouting(index: index),
          leftCornerRadius: 20,
          rightCornerRadius: 20,
        ),
      ),
    );
  }
}
