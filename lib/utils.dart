import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class Utils {
  static var show = _Show();
  static var validators = _Validators();
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

class _Validators {
  String? email(String? value) {
    if (value!.isEmpty) {
      return 'email is required';
    } else if (!value.isValidEmail()) {
      return 'invalid email';
    } else {
      return null;
    }
  }

  String? phoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is Required';
    } else if (value.length < 10) {
      return 'Phone Number Must Contains 10 Digits';
    } else {
      return null;
    }
  }

  String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    } else if (value.length < 6) {
      return 'Password Must Contains 6 letter';
    } else {
      return null;
    }
  }

  String? required(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is Required';
    } else {
      return null;
    }
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

