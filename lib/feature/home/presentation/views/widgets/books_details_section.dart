import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_image_book.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: CustomImageBook(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(bookModel.volumeInfo.title!,
         style: Styles.testStyle30,
         textAlign: TextAlign.center,),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.5,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'No Author',
            style: Styles.testStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(mainAxisAlignment: MainAxisAlignment.center, coutRating: bookModel.volumeInfo.pageCount??300,),
        const SizedBox(height: 38),
        BookAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
