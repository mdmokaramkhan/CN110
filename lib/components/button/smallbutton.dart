import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class ButtonSmall extends StatelessWidget {
  final String lable;
  final Color colorBackground;
  final Color colorText;
  final double elevation;
  final Function()? onPressed;
  const ButtonSmall({
    super.key,
    required this.lable,
    required this.colorBackground,
    required this.colorText,
    required this.elevation,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colorBackground,
      elevation: elevation,
      shadowColor: colorBackground,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        splashColor: Style.colors.white.withOpacity(0.4),
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          height: 50,
          child: Center(
            child: Text(
              lable,
              style: Style.textStyles.cardTittle.copyWith(color: colorText),
            ),
          ),
        ),
      ),
    );
  }
}