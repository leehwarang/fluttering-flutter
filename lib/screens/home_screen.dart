import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            Text("어제 세워둔 계획이 없어요"),
          ],
        ),
      ),
    );
  }
}

class BottomNavigatorBar extends StatefulWidget {
  const BottomNavigatorBar({
    super.key,
  });

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int _selectedTabIndex = 0;

  void changeTap(int idx) {
    setState(() {
      _selectedTabIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(canvasColor: Colors.white),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: _selectedTabIndex,
          onTap: (value) => changeTap(value),
          selectedItemColor: Colors.lime,
          unselectedItemColor: Colors.brown.shade400,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.eco_rounded,
                  size: 28,
                ),
                label: "오늘의 잎"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.park_rounded,
                  size: 28,
                ),
                label: "2월의 숲"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.water_drop,
                  size: 28,
                ),
                label: "같이 자라기"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 28,
                ),
                label: "설정")
          ],
        ));
  }
}