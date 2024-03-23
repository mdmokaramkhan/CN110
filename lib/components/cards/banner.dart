import 'package:flutter/material.dart';
import 'package:recipe_app/style.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Style.sizes.gap,
        horizontal: Style.sizes.gap,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20,
      ),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Style.colors.primaryColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(
          image: NetworkImage(
            'https://cdni.iconscout.com/illustration/premium/thumb/female-cook-tasting-food-4874539-4055253.png',
          ),
          alignment: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Find recipes based\non what you already\nhave at home',
            style: Style.textStyles.cardTittleL,
          ),
          SizedBox(height: Style.sizes.textGap),
          Text(
            'Get the food recipe more easier!',
            style: Style.textStyles.cardDescription,
          ),
          SizedBox(height: Style.sizes.gap),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Style.colors.primaryColor,
              ),
            ),
            child: const Text(
              'Explore Now',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
