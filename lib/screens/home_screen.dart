import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottomNavigationBar_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  late BottomNavigationBarProvider _bottomNavigationBarProvider;

  @override
  Widget build(BuildContext context) {
    _bottomNavigationBarProvider =
        Provider.of<BottomNavigationBarProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Text(_bottomNavigationBarProvider.leafType),
          ],
        ),
      ),
    );
  }
}
