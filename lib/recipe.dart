// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/style.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({
    super.key,
    required this.link,
  });
  final String link;

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Title'),
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/custom/heart.svg',
              color: Colors.deepOrange,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: SvgPicture.asset(
          'assets/icons/custom/play.svg',
          color: Style.colors.textBold,
        ),
        label: const Text("Watch Video"),
        isExtended: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Style.sizes.defaultPadding),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.link,
                  fit: BoxFit.cover,
                  height: 300,
                  width: double.infinity,
                ),
              ),
              SizedBox(height: Style.sizes.defaultPadding),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 28,
                    child: Image.asset('assets/avatars/av1.png'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '  2 days ago ',
                        style: Style.textStyles.cardDescription,
                      ),
                      Row(
                        children: [
                          Text(
                            '  Mohd. Mokaram ',
                            style: Style.textStyles.cardTittle,
                          ),
                          SvgPicture.asset(
                            'assets/icons/custom/trusted.svg',
                            color: Style.colors.colorWaiting,
                            height: 18,
                            width: 18,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Style.colors.colorSuccess,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '4.5',
                      style: Style.textStyles.boldSmall.copyWith(
                        color: Style.colors.textBold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Style.sizes.gap),
              const Text(
                "\"Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.\"",
              ),
              SizedBox(height: Style.sizes.gap),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/custom/pipe.svg',
                        color: Style.colors.colorWaiting,
                      ),
                      SizedBox(width: Style.sizes.gap),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Ingredients', style: Style.textStyles.cardDescription),
                          Text('10 items', style: Style.textStyles.boldSmall),
                        ],
                      ),
                    ],
                  ),
                  const VerticalDivider(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/custom/clock.svg',
                        color: Style.colors.colorWarning,
                      ),
                      SizedBox(width: Style.sizes.gap),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Time', style: Style.textStyles.cardDescription),
                          Text('12 mins', style: Style.textStyles.boldSmall),
                        ],
                      ),
                    ],
                  ),
                  const VerticalDivider(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/custom/pipe.svg',
                        color: Style.colors.colorSuccess,
                      ),
                      SizedBox(width: Style.sizes.gap),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Energy', style: Style.textStyles.cardDescription),
                          Text('230 cal', style: Style.textStyles.boldSmall),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 20),
              const Text(
                'Prepare Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                  '• Gather all your ingredients: bun, onion, ground beef patty, lettuce, tomato, cheese, pickles, ketchup, mustard, and mayonnaise.'),
              const Text(
                  '• Wash the lettuce and tomato. Peel and slice the onion.'),
              const SizedBox(height: 16),
              const Text(
                'Cook the Patty:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                  '1. Preheat a grill or skillet over medium-high heat.'),
              const Text(
                  '2. Season the ground beef patty with salt and pepper, if desired.'),
              const Text(
                  '3. Cook the patty for about 3-4 minutes on each side, or until desired doneness is reached. If using cheese, add it to the patty during the last minute of cooking to allow it to melt.'),
              const SizedBox(height: 16),
              const Text(
                'Prepare the Bun:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('1. Slice the bun in half horizontally.'),
              const Text(
                  '2. Optionally, toast the bun halves on the grill or in a toaster for added flavor and texture.'),
              const SizedBox(height: 16),
              const Text(
                'Assemble the Burger:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                  '1. Place the cooked patty on the bottom half of the bun.'),
              const Text(
                  '2. Layer with lettuce, tomato slices, and onion rings.'),
              const Text('3. Add pickles if desired.'),
              const Text(
                  '4. Spread ketchup, mustard, and mayonnaise on the top half of the bun.'),
              const Text(
                  '5. Place the top half of the bun over the assembled ingredients to complete the burger.'),
              const SizedBox(height: 16),
              const Text(
                'Serve:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                  '• Serve the burger immediately while it\'s still warm and the ingredients are fresh.'),
              const Text(
                  '• Optionally, serve with additional condiments or side dishes such as fries or coleslaw.'),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }
}
