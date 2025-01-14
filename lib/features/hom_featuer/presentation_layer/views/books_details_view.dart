import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/books_details_body.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BooksDetailsBody(),
    );
  }
}
