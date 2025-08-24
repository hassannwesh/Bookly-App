import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';

class CustomImageBook extends StatelessWidget {
  const CustomImageBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //for different size device
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(AssetsData.testImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
