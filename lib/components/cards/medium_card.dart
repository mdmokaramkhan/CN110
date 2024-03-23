import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MediumCard extends StatelessWidget {
  const MediumCard({
    super.key,
    required this.imageLink,
  });
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: 170,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: CachedNetworkImage(
          imageUrl: imageLink,
          fit: BoxFit.cover,
          progressIndicatorBuilder: (context, url, progress) => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
