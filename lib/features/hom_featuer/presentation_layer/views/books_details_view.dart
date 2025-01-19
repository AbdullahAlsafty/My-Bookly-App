import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/books_details_body.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BooksDetailsBody(
        bookModel: bookModel,
      ),
    );
  }
}
