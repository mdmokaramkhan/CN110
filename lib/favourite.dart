import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Favourite'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Image.network(
          'https://cdn.dribbble.com/users/1445676/screenshots/3742742/favorites_empty_state.png',
          colorBlendMode: BlendMode.colorBurn,
        ),
      ),
    );
  }
}
