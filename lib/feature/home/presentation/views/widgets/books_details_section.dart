import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_image_book.dart';
class BooksDetailsSection extends StatelessWidget {
const  BooksDetailsSection({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(children: [Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.25),
      child: CustomImageBook(),
    ),
      const SizedBox(height: 43),
      Text('The Jungle Bool', style: Styles.testStyle30),
      const SizedBox(height: 6),
      Opacity(
        opacity: 0.5,
        child: Text('Rudyard Kipling', style: Styles.testStyle18.copyWith(
            fontStyle: FontStyle.italic
        )),
      ),
      const SizedBox(height: 18,),
      BookRating(mainAxisAlignment:MainAxisAlignment.center ,),
      const SizedBox(height: 38,),
      BookAction(),],);
  }
}