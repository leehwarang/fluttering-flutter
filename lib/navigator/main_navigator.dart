import 'package:flutter/material.dart';
import 'package:pmfm/screens/calendar_screen.dart';
import 'package:pmfm/screens/home_screen.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int _selectedTabIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _screens = [const HomeScreen(), const CalendarScreen()];

  void onItemTapped(int idx) {
    setState(() {
      _pageController.jumpToPage(idx);
    });
  }

  void onPageChange(int idx) {
    setState(() {
      _selectedTabIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Colors.white),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          currentIndex: _selectedTabIndex,
          onTap: onItemTapped,
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
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.lime,
        child: Icon(
          Icons.add,
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChange,
        children: _screens,
      ),
    );
  }
}
