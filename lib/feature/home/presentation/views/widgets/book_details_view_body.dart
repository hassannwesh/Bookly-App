import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_details_appBar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/cupertino.dart';

import 'book_action.dart';
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
          const SizedBox( height: 15,),

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
          const SizedBox(height: 38,),
          BookAction(),
          const SizedBox( height: 55,),
           Align(
             alignment: Alignment.centerLeft,
             child: Text('You can also like ',style: Styles.testStyle14.copyWith(
               fontWeight: FontWeight.w700
             ),),
           ),
          const SizedBox( height: 20,),
          SimilarBookListView(),
          const SizedBox( height: 40,),

        ],
      ),
    );
  }
}


