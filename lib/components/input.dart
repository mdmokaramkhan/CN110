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
