import 'package:flutter/material.dart';
import 'package:my_bookly/features/search_featuer/presentation/views/widgets/custom_textFiled_searchView.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SafeArea(child: CustomTextFildSearchView()),
        ],
      ),
    );
  }
}
