// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/style.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({
    super.key,
    required this.image,
    this.onTap,
  });
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(Style.sizes.gap),
      child: InkWell(
        borderRadius: BorderRadius.circular(Style.sizes.gap),
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Style.sizes.defaultPadding),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Style.sizes.gap),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(Style.sizes.gap),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width * 0.35,
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                        width: 500,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Style.sizes.gap),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'The juicy classic',
                        style: Style.textStyles.cardTittle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('By ', style: Style.textStyles.cardDescription),
                          Text(
                            '@mukrram',
                            style: Style.textStyles.cardDescription.copyWith(
                              color: Style.colors.primaryColor,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              SvgPicture.asset(
                                'assets/icons/custom/clock.svg',
                                height: 20,
                                width: 20,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Text('13:00', style: Style.textStyles.cardDescription,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
