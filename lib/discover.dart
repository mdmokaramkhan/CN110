import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/components/cards/banner.dart';
import 'package:recipe_app/components/cards/mini_card.dart';
import 'package:recipe_app/components/filter_bottomsheet.dart';
import 'package:recipe_app/data.dart';
import 'package:recipe_app/recipe.dart';
import 'package:recipe_app/style.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  List<String> categories = [
    'Popular',
    'Trending',
    'Monthly',
    'Day',
  ];
  List<String> icons = [
    'https://icons.veryicon.com/png/o/miscellaneous/black-yellow-linear-simple-icon/popular-12.png',
    'https://cdn-icons-png.flaticon.com/512/1946/1946430.png',
    'https://cdn-icons-png.flaticon.com/512/5776/5776621.png',
    'https://cdn-icons-png.flaticon.com/512/5776/5776286.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Discover'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const FilterBottomSheet(),
              );
            },
            icon: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset('assets/icons/svg/Filter.svg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        debugPrint('$value - $index');
                      },
                    ),
                  ),
                ),
              ),
            ),
            const CustomBanner(),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Style.sizes.defaultPadding,
              ),
              child: Row(
                children: [
                  Text('Trending Recipes', style: Style.textStyles.cardTittleL),
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
            ),
          ],
        ),
      ),
    );
  }
}
