import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/Featured_book_listview.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/custom_app_bar_homview.dart';

import 'newest_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: CustomAppBarHomView(),
              ),
              FeaturedBookListview(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Best Saler', style: StylsFil.textfont18),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(child: NewestBooksListViw()),
      ],
    );
  }
}
