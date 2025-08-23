import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_details_appBar.dart';
import 'package:flutter/cupertino.dart';

import 'custom_image_book.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppbar(),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: width*0.19),
            child: CustomImageBook(),
          ),
        ],
      ),
    );
  }
}
