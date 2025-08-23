import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment=MainAxisAlignment.center});
final mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 16,

        ),
        SizedBox(width: 6.3,),
        Text(
          '4.8',
          style: Styles.testStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5,),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(245)',
            style: Styles.testStyle16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
        

      ],
    );
  }
}
