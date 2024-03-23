// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/components/cards/mini_card.dart';
import 'package:recipe_app/components/cursouel.dart';
import 'package:recipe_app/components/filter_bottomsheet.dart';
import 'package:recipe_app/components/input.dart';
import 'package:recipe_app/notification.dart';
import 'package:recipe_app/recipe.dart';
import 'package:recipe_app/style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> categories = [
    'American',
    'Chinese',
    'Italian',
    'Indian',
    'Mexican',
    'Japanese',
  ];
  List<String> title = [
    'Classic Burger',
    'Vaddakam Dosa',
    'Gulaabo Jaamun',
    'Paparazi Pizza',
    'Lenghty Dosa',
    'Springy Noodels',
  ];
  List<String> images = [
    'https://img.freepik.com/premium-photo/realistic-hamburger-image-solid-colour-backgrounds_859052-576.jpg',
    'https://cdn.pixabay.com/photo/2016/10/25/13/42/indian-1768906_640.jpg',
    'https://t4.ftcdn.net/jpg/06/21/54/41/360_F_621544128_inBjLYomzXLGFiNVri9ebirH1MMJ7ige.jpg',
    'https://img.freepik.com/premium-photo/round-small-pizza-with-spices-dark-solid-background-side-view_923894-4412.jpg',
    'https://t3.ftcdn.net/jpg/03/21/94/18/360_F_321941897_1IemuLDDsuBlNyK3nCy8DpHgW3DKJu2B.jpg',
    'https://spdpay.in/blitz/flags/minicard.jpg',
  ];
  List<String> icons = [
    'https://spdpay.in/blitz/flags/america.png',
    'https://spdpay.in/blitz/flags/china.png',
    'https://spdpay.in/blitz/flags/italy.png',
    'https://spdpay.in/blitz/flags/india.png',
    'https://spdpay.in/blitz/flags/mexico.png',
    'https://spdpay.in/blitz/flags/japan.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Aryan',
                        style: Style.textStyles.cardDescription,
                      ),
                      Text(
                        'What do you want to cook today?',
                        style: Style.textStyles.cardTittleL,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationPage()));
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/custom/notification.svg',
                      height: 32,
                      color: Style.colors.textBold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Style.sizes.defaultPadding,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Style.sizes.gap),
                        boxShadow: const [BoxShadow()],
                      ),
                      child: const SearchInput(),
                    ),
                  ),
                  SizedBox(width: Style.sizes.textGap),
                  SizedBox(
                    height: 60,
                    width: 50,
                    child: Material(
                      color: Colors.white,
                      shadowColor: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const FilterBottomSheet(),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(Style.sizes.gap),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              Style.sizes.gap,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(
                              'assets/icons/svg/Filter.svg',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const CustomBanner(),
            const OfferBanner(),
            Container(
              // padding: EdgeInsets.all(Style.sizes.gap),
              margin: EdgeInsets.symmetric(horizontal: Style.sizes.gap),
              child: Row(
                children: [
                  Text(' Categories', style: Style.textStyles.cardTittleL),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Show All'),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  categories.length,
                  (index) => Container(
                    margin: EdgeInsets.only(left: Style.sizes.gap),
                    child: ChoiceChip(
                      avatar: Image.network(
                        icons[index],
                        height: 20,
                      ),
                      selected: false,
                      side: BorderSide(color: Colors.grey.withOpacity(0.2)),
                      label: Text(categories[index]),
                      onSelected: (value) {
                        
                      },
                    ),
                  ),
                ),
              ),
            ),
            Wrap(
              children: List.generate(
                images.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MiniCard(
                    image: images[index],
                    title: title[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RecipeDetails(
                            link: images[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
