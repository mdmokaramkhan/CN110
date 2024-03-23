import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/style.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(Style.sizes.gap),
        ),
        hintText: 'Search for your recipe',
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Style.colors.textBold,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.all(Style.sizes.gap),
          child: SvgPicture.asset('assets/icons/svg/Search.svg'),
        ),
      ),
    );
  }
}


class PasswordInput extends StatefulWidget {
  final String? password;
  final String? lable;
  final Function(String?)? onSaved;
  const PasswordInput({
    Key? key,
    required this.password,
    required this.onSaved,
    required this.lable,
  }) : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool m = true;
  String i = 'assets/icons/view.svg';
  String hintText = 'enter password';
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: m,
      style: Style.textStyles.cardTittle,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.w600,
          color: Style.colors.textHint,
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 5.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: Style.sizes.gap, right: Style.sizes.gap),
          child: SvgPicture.asset(
            'assets/icons/key.svg',
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              if (m) {
                m = false;
                i = 'assets/icons/view_hide.svg';
              } else {
                m = true;
                i = 'assets/icons/view.svg';
              }
            });
          },
          child: Padding(
            padding: EdgeInsets.only(left: Style.sizes.gap, right: Style.sizes.gap),
            child: SvgPicture.asset(i),
          ),
        ),
      ),
      onSaved: widget.onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is Required';
        } else if (value.length < 6) {
          return 'Password Must Contains 6 letter';
        } else {
          return null;
        }
      },
    );
  }
}