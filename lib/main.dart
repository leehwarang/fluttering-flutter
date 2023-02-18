import 'package:flutter/material.dart';
import 'package:pmfm/screens/pomodoros_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              color: Color(0xFF232B55),
            ),
          ),
          colorScheme: ColorScheme.fromSwatch(
            backgroundColor: const Color(0xFFE7626C),
          ),
          cardColor: const Color(0xFFF3EDDB),
        ),
        home: const PhomodorosScreen());
  }
}

class MyLargeTitle extends StatelessWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Large Title',
      style: TextStyle(
        fontSize: 30,
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
