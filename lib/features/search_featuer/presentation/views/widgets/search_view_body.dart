import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/search_featuer/presentation/views/widgets/custom_textFiled_searchView.dart';
import 'package:my_bookly/features/search_featuer/presentation/views/widgets/search_books_result_listViewItems.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SafeArea(child: CustomTextFildSearchView()),
          SizedBox(
            height: 30,
          ),
          Text(
            'the Results ',
            style: StylsFil.textfont30,
          ),
          Expanded(child: SearchBooksResultListviewitems()),
        ],
      ),
    );
  }
}
