import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/components/button/largebutton.dart';
import 'package:recipe_app/components/input.dart';
import 'package:recipe_app/main.dart';
import 'package:recipe_app/style.dart';
import 'package:recipe_app/utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool userFound = false;
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Style.colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Style.sizes.defaultPadding * 2,
          horizontal: Style.sizes.defaultPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get Started With\nCulinary Garden',
              style: TextStyle(
                color: Style.colors.textBold,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: Style.sizes.defaultPadding * 1.5),
            Text(
              'Enter your mobile number to login & signup',
              style: Style.textStyles.cardDescription,
            ),
            SizedBox(height: Style.sizes.defaultPadding * 2),
            TextFormField(
              style: Style.textStyles.cardTittle,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: '00000 00000',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Style.colors.textHint,
                ),
                prefixIcon: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        'https://cdn.iconscout.com/icon/free/png-256/india-flag-country-nation-union-empire-32988.png',
                        width: 24,
                      ),
                      SizedBox(width: Style.sizes.textGap),
                      Text(
                        '+91',
                        style: Style.textStyles.cardTittle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              keyboardType: TextInputType.number,
              onChanged: (value) async {
                if (value.length == 10) {
                  if (mounted) FocusScope.of(context).unfocus();
                  username = value;
                  Utils.show.fullScreenLoading2(context);
                  // var response = await Api.authenticates.checkUsername(
                  //   context: context,
                  //   username: username,
                  //   password: 'password',
                  // );
                  // if (response.data['success'] == true) {
                  //   setState(() {
                  //     userFound = true;
                  //   });
                  // } else {
                  //   if (mounted) {
                  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  //       content: Text(response.data['response']),
                  //     ));
                  //   }
                  // }
                  Future.delayed(const Duration(seconds: 5), () {
                    Navigator.pop(context);
                    setState(() {
                      userFound = true;
                    });
                  });
                } else if (userFound) {
                  setState(() {
                    userFound = false;
                  });
                }
              },
            ),
            SizedBox(height: Style.sizes.gap),
            userFound
                ? Form(
                    key: _formKey,
                    child: PasswordInput(
                      lable: 'Password',
                      password: 'assets/icons/custom/key.svg',
                      onSaved: (value) => password = value.toString(),
                    ),
                  )
                : Container(),
            SizedBox(height: Style.sizes.defaultPadding),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Having trouble, need help?',
                style: TextStyle(
                  color: Style.colors.accentColor,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Spacer(),
            userFound
                ? ButtonLarge(
                    lable: 'NEXT',
                    color: Style.colors.primaryColor,
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      //   Api.authenticates.signIn(
                      //     context: context,
                      //     username: username,
                      //     password: password,
                      //   );
                      // }
                      Utils.show.fullScreenLoading2(context);
                      Future.delayed(
                          const Duration(
                            seconds: 3,
                          ), () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      });
                      return;
                    },
                  )
                : ButtonLarge(
                    lable: 'NEXT',
                    color: Style.colors.primaryColor,
                    onPressed: null,
                  ),
          ],
        ),
      ),
    );
  }
}
