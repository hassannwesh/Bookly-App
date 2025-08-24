import 'package:bookly_app/feature/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const SizedBox(height: 16,),
        CustomTextField(),
        const SizedBox(height: 16,),
        Text('Search Result', style: Styles.testStyle18),
        const SizedBox(height: 16,),
        Expanded(child: SearchResultListView()),

      ]),
    );
  }
}



