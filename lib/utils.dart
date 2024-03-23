import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class Utils {
  static var show = _Show();
}

class _Show {
  void fullScreenLoading2(context) {
    showDialog(
      context: context,
      barrierColor: Style.colors.white.withOpacity(0.65),
      builder: (context) {
        return Scaffold(
          backgroundColor: Style.colors.white.withOpacity(0.65),
          body: InkWell(
            onTap: () => Navigator.pop(context),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    const FlutterLogo(
                      size: 40,
                    ),
                    SizedBox(
                      height: 90,
                      width: 90,
                      child: CircularProgressIndicator(
                        color: Style.colors.accentColor,
                        strokeWidth: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
