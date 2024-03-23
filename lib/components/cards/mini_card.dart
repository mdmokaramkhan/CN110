// ignore_for_file: deprecated_member_use

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app/style.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({
    super.key,
    required this.image,
    required this.title,
    this.onTap,
  });
  final String image;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(Style.sizes.gap),
      child: InkWell(
        borderRadius: BorderRadius.circular(Style.sizes.gap),
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.45,
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
                      child: CachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                        width: 500,
                        progressIndicatorBuilder: (context, url, progress) =>
                            const Center(child: CircularProgressIndicator()),
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
                        title,
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
                          Text(
                            '13:00',
                            style: Style.textStyles.cardDescription,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      )
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
