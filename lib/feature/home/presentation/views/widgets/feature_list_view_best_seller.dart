import 'package:bookly_app/feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class FeatureListViewBestSeller extends StatelessWidget {
  const FeatureListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomBookListViewItem(),
          );
        },
      ),
    );
  }
}
