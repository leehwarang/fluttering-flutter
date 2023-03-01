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
  String _leapType = 'today';
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

  void onLeapTypeChange() {
    setState(() {
      if (_leapType == "today") {
        _leapType = "tomorrow";
      } else {
        _leapType = "today";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Theme(
        data: ThemeData(
          canvasColor: Colors.white,
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          currentIndex: _selectedTabIndex,
          onTap: onItemTapped,
          selectedItemColor: Colors.lime,
          unselectedItemColor: Colors.brown.shade400,
          enableFeedback: true,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onLongPress: onLeapTypeChange,
                child: const Icon(
                  Icons.eco_rounded,
                  size: 28,
                ),
              ),
              label: _leapType == "today" ? "오늘의 잎" : "내일의 잎",
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.park_rounded,
                  size: 28,
                ),
                label: "숲"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.water_drop,
                  size: 28,
                ),
                label: "같이 자라기"),
            const BottomNavigationBarItem(
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
