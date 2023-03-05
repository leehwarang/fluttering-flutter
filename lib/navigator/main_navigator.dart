import 'package:flutter/material.dart';
import 'package:pmfm/provider/bottomNavigationBar_provider.dart';
import 'package:pmfm/screens/calendar_screen.dart';
import 'package:pmfm/screens/home_screen.dart';
import 'package:provider/provider.dart';

class MainNavigator extends StatelessWidget {
  MainNavigator({super.key});
  late BottomNavigationBarProvider _bottomNavigationBarProvider;

  final List<Widget> _screens = [
    HomeScreen(),
    const CalendarScreen(),
    const CalendarScreen(),
    const CalendarScreen()
  ];

  @override
  Widget build(BuildContext context) {
    _bottomNavigationBarProvider =
        Provider.of<BottomNavigationBarProvider>(context);

    int currentIndex = _bottomNavigationBarProvider.selectedTabIndex;

    void openAddBottomSheet() {
      final String title = _bottomNavigationBarProvider.leafType == "today"
          ? "오늘의 잎 더하기"
          : "내일의 잎 더하기";

      showModalBottomSheet<void>(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

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
            currentIndex: currentIndex,
            onTap: (idx) =>
                _bottomNavigationBarProvider.changeSelectedTabIndex(idx),
            selectedItemColor: Colors.lime,
            unselectedItemColor: Colors.brown.shade400,
            enableFeedback: true,
            items: [
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onLongPress: () => {
                    _bottomNavigationBarProvider.setLeafType(
                        _bottomNavigationBarProvider.leafType == 'today'
                            ? 'tomorrow'
                            : 'today')
                  },
                  child: const Icon(
                    Icons.eco_rounded,
                    size: 28,
                  ),
                ),
                label: _bottomNavigationBarProvider.leafType == 'today'
                    ? "오늘의 잎"
                    : "내일의 잎",
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
        floatingActionButton: FloatingActionButton(
          onPressed: openAddBottomSheet,
          backgroundColor: Colors.lime,
          child: const Icon(
            Icons.add,
          ),
        ),
        body: _screens[currentIndex]);
  }
}
