import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomImageBook extends StatelessWidget {
  const CustomImageBook({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        //for different size device
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(fit: BoxFit.fill, 
        imageUrl: imageUrl,
        errorWidget: (context, url, error) => Icon( Icons.error),
        ),
      ),
    );
  }
}
