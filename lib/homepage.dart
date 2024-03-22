import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/components/avatar.dart';
import 'package:recipe_app/components/input.dart';
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Style.sizes.defaultPadding,
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: SearchInput(),
                  ),
                  SizedBox(width: Style.sizes.textGap),
                  SizedBox(
                    height: 54,
                    child: Container(
                      padding: EdgeInsets.all(Style.sizes.gap),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Style.sizes.gap),
                        boxShadow: const [BoxShadow()],
                      ),
                      child: SvgPicture.asset('assets/icons/svg/Filter.svg'),
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
