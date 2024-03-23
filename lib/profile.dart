// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/components/cards/medium_card.dart';
import 'package:recipe_app/components/cards/mini_card.dart';
import 'package:recipe_app/createrecipe.dart';
import 'package:recipe_app/data.dart';
import 'package:recipe_app/login.dart';
import 'package:recipe_app/recipe.dart';
import 'package:recipe_app/style.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Profile'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            child: const Text('Logout'),
          ),
          SizedBox(width: Style.sizes.textGap),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: Image.asset('assets/avatars/av1.png'),
                      ),
                      SizedBox(width: Style.sizes.gap),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Mohd. Mokaram  ',
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
                          Text(
                            '@mokrram',
                            style: Style.textStyles.cardDescription.copyWith(
                              color: Style.colors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Edit Profile'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                              Text(
                                'Recipes',
                                style: Style.textStyles.cardDescription,
                              ),
                              Text('8', style: Style.textStyles.boldSmall),
                            ],
                          ),
                        ],
                      ),
                      const VerticalDivider(),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/svg/user_3.svg',
                            color: Style.colors.colorWarning,
                          ),
                          SizedBox(width: Style.sizes.gap),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Followers',
                                style: Style.textStyles.cardDescription,
                              ),
                              Text('3.9k', style: Style.textStyles.boldSmall),
                            ],
                          ),
                        ],
                      ),
                      const VerticalDivider(),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/svg/Ticket Star.svg',
                            color: Style.colors.colorSuccess,
                          ),
                          SizedBox(width: Style.sizes.gap),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rating',
                                style: Style.textStyles.cardDescription,
                              ),
                              Text('4.8', style: Style.textStyles.boldSmall),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Colors.deepPurple.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CreateRecipe(),
                          ),
                        );
                      },
                      child: Container(
                        height: 54,
                        width: MediaQuery.of(context).size.width * .45,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // SvgPicture.asset('assets/icons/svg/Edit.svg'),
                              Text(
                                'New Recipe',
                                style: Style.textStyles.cardTittle
                                    .copyWith(color: Colors.grey[800]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.lightGreen.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 54,
                      width: MediaQuery.of(context).size.width * .45,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.lightGreen),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Manage Recipe',
                          style: Style.textStyles.cardTittle
                              .copyWith(color: Colors.grey[800]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Style.sizes.defaultPadding,
              ),
              child: Row(
                children: [
                  Text('Favourite Recipes',
                      style: Style.textStyles.cardTittleL),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Show All'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: Style.sizes.defaultPadding,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    banners.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        right: Style.sizes.gap,
                      ),
                      child: MediumCard(
                        imageLink: banners[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Style.sizes.defaultPadding,
              ),
              child: Row(
                children: [
                  Text('Your Recipes', style: Style.textStyles.cardTittleL),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Show All'),
                  ),
                ],
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
                    publisher: user[index],
                    timing: timing[index],
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
