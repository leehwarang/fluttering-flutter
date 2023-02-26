import 'package:flutter/material.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavigatorBar(),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lime,
        child: Icon(
          Icons.add,
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({
    super.key,
  });
  // BottomNavigationBar
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: 0,
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
        ]);
  }
}
