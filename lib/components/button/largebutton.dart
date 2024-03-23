import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class ButtonLarge extends StatelessWidget {
  final String lable;
  final Color color;
  final Function()? onPressed;
  const ButtonLarge({
    super.key,
    required this.lable,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      elevation: 2,
      shadowColor: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Style.colors.white.withOpacity(0.4),
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 54,
          width: double.maxFinite,
          child: Center(
            child: Text(
              lable,
              style: Style.textStyles.cardTittle.copyWith(color: Style.colors.fixwhite),
            ),
          ),
        ),
      ),
    );
  }
}