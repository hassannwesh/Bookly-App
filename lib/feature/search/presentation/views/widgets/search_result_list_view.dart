import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/feature/search/presentation/manger/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widgets/newset_books_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomBookListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is SearchLoading) {
          return const CustomLoadingindicator();
        } else {
          return const Center(child: Text(" Search For Books"));
        }
      },
    );
  }
}
