import 'package:bookly_app/feature/home/presentation/views/widgets/feature_list_view_item.dart';
import 'package:flutter/cupertino.dart';

class FeatureBookListView extends StatelessWidget {
  const FeatureBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeatureListViewItem(),
          );
        },
      ),
    );
  }
}
