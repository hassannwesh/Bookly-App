import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/feature/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/custom_image_book.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/assets.dart';

class CustomBookListViewItem extends StatelessWidget {
  const CustomBookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageBook(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.testStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.testStyle16,
                  ),
                  const SizedBox(height: 3),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.testStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        BookRating(coutRating:bookModel.volumeInfo.pageCount??300,),
                      ],
                    ),
                  ),
                ],
              ), 
            ),
          ],
        ),
      ),
    );
  }
}
