import 'dart:math';

import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/feature/home/presentation/manger/similar_books/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_image_book.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, State) {
        if (State is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: State.books.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomImageBook(
                    imageUrl:
                        State.books[index].volumeInfo.imageLinks?.thumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (State is SimilarBooksFaliure) {
          return CustomErrorWidget(errorMessage: State.errMessage);
        } else {
          return const Center(child: CustomLoadingindicator());
        }
      },
    );
  }
}
