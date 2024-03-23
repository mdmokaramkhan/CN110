// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/discover.dart';
import 'package:recipe_app/favourite.dart';
import 'package:recipe_app/homepage.dart';
import 'package:recipe_app/profile.dart';
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
      title: 'Recipe App',
      theme: ThemeData(
        scaffoldBackgroundColor: Style.colors.scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          color: Style.colors.white,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Style.colors.textBold),
          iconTheme: IconThemeData(color: Style.colors.textBold),
          titleTextStyle: TextStyle(
            color: Style.colors.textBold,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.white,
            statusBarColor: Style.colors.scaffoldBackgroundColor,
            statusBarBrightness: Brightness.dark,
          ),
        ),
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
    Style.colors.primaryColor,
    Colors.grey[400],
    Colors.grey[400],
    Colors.grey[400]
  ];
  final List<Widget> screens = [
    const MyHomePage(),
    const Discover(),
    const Favourite(),
    const Profile(),
  ];

  void onChange(int index) {
    setState(() {
      _currentIndex = index;
      for (int i = 0; i < 4; i++) {
        if (i != index) {
          active[i] = Colors.grey[400];
        } else {
          active[i] = Style.colors.primaryColor;
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
          selectedItemColor: Style.colors.primaryColor,
          items: [
            SalomonBottomBarItem(
              selectedColor: Style.colors.primaryColor,
              icon: SvgPicture.asset(
                'assets/icons/custom/home.svg',
                color: Style.colors.primaryColor,
              ),
              title: const Text(
                "Home",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.blue,
              icon: SvgPicture.asset(
                'assets/icons/svg/Discovery.svg',
                color: Colors.blue,
              ),
              title: const Text(
                "Discover",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.deepOrange,
              icon: SvgPicture.asset(
                'assets/icons/custom/heart.svg',
                color: Colors.deepOrange,
              ),
              title: const Text(
                "Favourites",
              ),
            ),
            SalomonBottomBarItem(
              selectedColor: Colors.green,
              icon: SvgPicture.asset(
                'assets/icons/custom/user.svg',
                color: Colors.green,
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
