import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/feature/home/presentation/views/widgets/feature_book_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view_item.dart';
import 'custom_home_view_appbar.dart';
import 'feature_list_view_best_seller.dart';
import 'custom_image_book.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomHomeViewAppBre(),
              ),
              FeatureBookListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Bast Seller', style: Styles.testStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        //دا بيدي الويدجيت الليجوه باقي المساحه اللي فاضله فس الشاشه في حاله لو هي اخر حاجه تمام بدل ما تعمل في اليست فيو ال shrinkWrap عشان البيرفورمانس باتع الليست فيو ي عاملي
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: FeatureListViewBestSeller(),
          ),
        ),
      ],
    );
  }
}
