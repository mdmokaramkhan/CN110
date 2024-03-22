import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
    required this.backgroundColor,
    this.child,
  });
  final Color backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Style.sizes.textGap),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: child,
    );
  }
}
