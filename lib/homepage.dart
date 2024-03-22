import 'package:flutter/material.dart';
import 'package:recipe_app/components/avatar.dart';
import 'package:recipe_app/style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Aryan',
                        style: Style.textStyles.cardDescription,
                      ),
                      Text(
                        'What do you want to cook today?',
                        style: Style.textStyles.cardTittleL,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Avatar(
                    backgroundColor: Style.colors.accentColor.withOpacity(0.2),
                    child: Image.asset(
                      'assets/avatars/av1.png',
                      height: 48,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
