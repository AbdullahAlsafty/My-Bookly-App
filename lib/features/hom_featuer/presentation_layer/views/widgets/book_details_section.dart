import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_image.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_rating.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/box_action_book_detailsview.dart';

class BooksDetailSection extends StatelessWidget {
  const BooksDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .17),
          child: BookImage(
            imageUrl: '',
          ),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: StylsFil.textfont30
              .copyWith(fontWeight: FontWeight.bold, fontFamily: kgTSectraFine),
        ),
        const SizedBox(
          height: 2,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: StylsFil.textfont18.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        // BooksRating(
        //   bookModel: ,
        //   mainAxisAlignment: MainAxisAlignment.center,
        // ),
        SizedBox(
          height: 37,
        ),
        BoxActionBookDetailsview(),
      ],
    );
  }
}
