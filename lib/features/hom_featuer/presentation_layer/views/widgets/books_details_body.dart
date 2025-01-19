import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_details_section.dart';

import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/custom_book_details_appBar.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/simlars_book_section.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              SafeArea(child: CustomBookDetailsAppBar()),
              const SizedBox(
                height: 50,
              ),
              BooksDetailSection(
                bookModel: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimelarsBookSection(),
            ],
          ),
        ),
      ]),
    );
  }
}
