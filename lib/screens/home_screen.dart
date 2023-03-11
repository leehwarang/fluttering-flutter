import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/bottomNavigationBar_provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  late BottomNavigationBarProvider _bottomNavigationBarProvider;

  // 날짜를 어딘가에서 보여주긴해야 할 듯

  @override
  Widget build(BuildContext context) {
    _bottomNavigationBarProvider =
        Provider.of<BottomNavigationBarProvider>(context);

    const String nickname = "화랑";
    final String appBartitle = _bottomNavigationBarProvider.leafType == "today"
        ? '$nickname님, 오늘은'
        : '$nickname님, 내일은';

    final String emptyContentText =
        _bottomNavigationBarProvider.leafType == "today"
            ? '어제 세워둔 계획이 없어요'
            : '아직 세워둔 계획이 없어요';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          appBartitle,
          style: TextStyle(
            color: Colors.green.shade300,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              Icons.space_dashboard_sharp,
              color: Colors.green.shade300,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    "3월 4일\n토요일",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(emptyContentText),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
