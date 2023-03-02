import 'package:flutter/material.dart';
import 'package:pmfm/navigator/main_navigator.dart';
import 'package:pmfm/provider/bottomNavigationBar_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => BottomNavigationBarProvider(),
        child: MainNavigator(),
      ),
    );
  }
}
