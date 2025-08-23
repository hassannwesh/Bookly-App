import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_details_appBar.dart';
import 'package:flutter/cupertino.dart';

import 'custom_image_book.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
          Padding(
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
        ],
      ),
    );
  }
}
