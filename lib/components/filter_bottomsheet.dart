import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  var list = [
    'Popularity',
    'Relevance',
    'Japnenese',
    'Indian',
    'Chinese',
    'Italian',
    'Mexican',
  ];
  String _value = 'All';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Style.sizes.defaultPadding,
        vertical: Style.sizes.defaultPadding * 1.5,
      ),
      child: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          if (index == 0) {
            return RadioListTile(
              title: Text(
                'All',
                style: Style.textStyles.cardTittle,
              ),
              value: 'All',
              groupValue: _value,
              activeColor: Style.colors.colorSuccess,
              onChanged: (value) {
                _value = value.toString();
                setState(() {});
                Navigator.pop(context);
              },
            );
          }
          return RadioListTile(
            title: Text(
              list[index],
              style: Style.textStyles.cardTittle,
            ),
            value: list[index],
            groupValue: _value,
            onChanged: (value) {
              _value = value.toString();
              setState(() {});
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
