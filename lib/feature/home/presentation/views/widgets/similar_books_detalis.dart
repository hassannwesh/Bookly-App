import 'package:bookly_app/feature/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
class SimilarBooksDetails extends StatelessWidget {
  const SimilarBooksDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text('You can also like ',style: Styles.testStyle14.copyWith(
            fontWeight: FontWeight.w700
        ),),
      ),
      const SizedBox( height: 20,),
      SimilarBookListView(),
    ],);
  }
}