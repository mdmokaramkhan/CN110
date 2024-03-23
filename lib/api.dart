import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Api {
  static final authenticates = _Authenticates();
}

class _Authenticates {
  //authentication url
  static const domain = 'http://admin.spdpay.in/api_v1/authenticates';

  //checking usern exist or not
  Future checkUsername({
    required BuildContext context,
    required String username,
    required String password,
  }) async {
    final navigator = Navigator.of(context);
    FormData data = FormData.fromMap({"Username": username, "Password": password});
    var response = await Dio().post(
      '$domain/checkUsername.php',
      data: data,
      options: Options(sendTimeout: const Duration(seconds: 120)),
    );
    if (navigator.mounted) navigator.pop();
    return response;
  }
  //checking usern exist or not
  Future createRecipe({
    required BuildContext context,
    required String username,
    required String password,
  }) async {
    final navigator = Navigator.of(context);
    FormData data = FormData.fromMap({"Username": username, "Password": password});
    var response = await Dio().post(
      '$domain/createrecipe.php',
      data: data,
      options: Options(sendTimeout: const Duration(seconds: 120)),
    );
    if (navigator.mounted) navigator.pop();
    return response;
  }
}
