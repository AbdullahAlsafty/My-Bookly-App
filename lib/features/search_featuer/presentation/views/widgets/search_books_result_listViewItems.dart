import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/books_listview_item.dart';

class SearchBooksResultListviewitems extends StatelessWidget {
  const SearchBooksResultListviewitems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container();
          // return BestSellarBooksListViewItems();
        });
  }
}
