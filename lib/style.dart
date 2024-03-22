import 'package:flutter/material.dart';

class Style {
  static final colors = _Colors();
  static final textStyles = _TextStyles();
  static final boxDecorations = _BoxDecorations();
  static final sizes = _Sizes();
}

class _Colors {
  final scaffoldBackgroundColor = const Color(0xFFF5F5F5);
  final white = const Color(0xFFFFFFFF);
  final fixwhite = const Color(0xFFFFFFFF);
  final black = const Color(0xFF000000);
  final primaryColor = const Color(0xFF007974);
  final secondaryColor = const Color(0xFF007975);
  final accentColor = const Color(0xFFFF6943);
  final textBold = const Color(0xFF1B1D45);
  final textGrey = const Color(0xFF707070);
  final textHint = const Color.fromARGB(255, 135, 135, 135);
  final colorSuccess = const Color(0xFF14C38E);
  final colorFailed = const Color(0xFFF47C7C);
  final colorWaiting = const Color(0xFF47B5FF);
  final colorWarning = const Color.fromARGB(255, 244, 198, 18);
  final iconBackground = const Color(0xFFF7F7F7);
  final lableBackground = const Color(0xFFF5F8FA);
  final transparent = Colors.transparent;
}


class _TextStyles {
  //Card tittle
  final cardTittle = TextStyle(
    color: Style.colors.textBold,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  //Card tittle large
  final cardTittleL = TextStyle(
    color: Style.colors.textBold,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  //Card tittle large
  final btnText = TextStyle(
    color: Style.colors.textBold,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  //Card tittle description
  final cardDescription = TextStyle(
    color: Style.colors.textGrey,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  //Card text small bold
  final boldSmall = TextStyle(
    color: Style.colors.textGrey,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
}

class _BoxDecorations {
  final card = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
  );
  final icon = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Style.colors.iconBackground,
  );
  final inputBox = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Style.colors.iconBackground,
  );
}

class _Sizes {
  final defaultPadding = 20.0;
  final gap = 10.0;
  final textGap = 5.0;
}