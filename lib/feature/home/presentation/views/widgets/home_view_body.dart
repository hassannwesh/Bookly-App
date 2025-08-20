import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/feature_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'feature_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBre(),
        FeatureBookListView(),

      ],
    );
  }
}



