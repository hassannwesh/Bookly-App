import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/utils/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_book_details_appBar.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/similar_books_detalis.dart';
import 'package:flutter/cupertino.dart';
import 'book_action.dart';
import 'books_details_section.dart';
import 'custom_image_book.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppbar(),
                const SizedBox(height: 25),
                BooksDetailsSection(bookModel:bookModel,),
                const Expanded(child: SizedBox(height: 55)),
                SimilarBooksDetails(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
