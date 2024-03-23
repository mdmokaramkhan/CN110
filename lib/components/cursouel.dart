import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var item = [
      'https://spdpay.in/blitz/flags/banner1.png',
      'https://spdpay.in/blitz/flags/banner2.png',
      'https://spdpay.in/blitz/flags/banner3.png',
      'https://spdpay.in/blitz/flags/banner4.png',
      'https://i.pinimg.com/736x/b1/33/fe/b133fe1cf7d86da172350deaf4c85599.jpg',
    ];
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 3),
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: CarouselSlider(
        items: List.generate(item.length, (i) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(
                    top: 5,
                    bottom: 5,
                    left: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Color(0xFFE0E0E0), blurRadius: 1)
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // child: Image.network(
                    //   item[i],
                    //   fit: BoxFit.cover,
                    // ),
                    child: CachedNetworkImage(
                      imageUrl: item[i],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
        options: CarouselOptions(autoPlay: true, enlargeCenterPage: false),
      ),
    );
  }
}
