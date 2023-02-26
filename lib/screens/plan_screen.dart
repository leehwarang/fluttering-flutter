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
          backgroundColor: Color.fromRGBO(110, 203, 99, 1),
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
            child: Column(
          children: const [
            Text("어제 세워둔 계획이 없어요"),
          ],
        )));
  }
}

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: const Color.fromRGBO(160, 217, 149, 1),
        shape: const CircularNotchedRectangle(),
        child: IconTheme(
          data: const IconThemeData(
            color: Colors.red,
          ),
          child: Row(
            children: const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.eco_rounded,
                  size: 36,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.park_rounded,
                  size: 36,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.water_drop,
                  size: 36,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.settings,
                  size: 36,
                ),
              ),
            ],
          ),
        )
        // CircularNotchedRectangle
        );
  }
}
