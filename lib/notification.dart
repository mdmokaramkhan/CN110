import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/no-notification.webp',
              scale: 2,
            ),
            Text('Notifications', style:  Style.textStyles.cardTittleL),
            SizedBox(height: Style.sizes.defaultPadding),
            Text('You currently have no notifications', style:  Style.textStyles.cardDescription),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
