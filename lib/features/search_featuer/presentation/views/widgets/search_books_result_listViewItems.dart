import 'package:flutter/material.dart';

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
