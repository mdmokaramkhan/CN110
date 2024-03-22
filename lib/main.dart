// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/homepage.dart';
import 'package:recipe_app/style.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  late Widget currentScreen;

  List active = [
    Style.colors.accentColor,
    Colors.grey[400],
    Colors.grey[400],
    Colors.grey[400]
  ];
  final List<Widget> screens = [
    const MyHomePage(),
    Container(color: Colors.green),
    Container(color: Colors.brown),
    Container( color: Colors.red,),
  ];

  void onChange(int index) {
    setState(() {
      _currentIndex = index;
      for (int i = 0; i < 4; i++) {
        if (i != index) {
          active[i] = Colors.grey[400];
        } else {
          active[i] = Style.colors.accentColor;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SafeArea(child: screens[_currentIndex]),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Theme.of(context).splashColor, blurRadius: 2)
          ],
        ),
        child: SalomonBottomBar(
          onTap: onChange,
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: Style.colors.accentColor,
          items: [
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/svg/Home.svg',
                color: active[0],
              ),
              title: const Text(
                "Home",
              ),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/svg/Discovery.svg',
                color: active[1],
              ),
              title: const Text(
                "Discover",
              ),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/svg/Heart.svg',
                color: active[2],
              ),
              title: const Text(
                "Favourites",
              ),
            ),
            SalomonBottomBarItem(
              icon: SvgPicture.asset(
                'assets/icons/svg/user_3.svg',
                color: active[3],
              ),
              title: const Text(
                "Profile",
              ),
            ),
          ],
        ),
      ),
    );
  }
}