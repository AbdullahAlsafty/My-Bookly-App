import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';

class BooksRating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final BookModel bookModel;

  const BooksRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.bookModel});

  @override
  Widget build(BuildContext context) {
    var vv = (bookModel.volumeInfo?.averageRating);
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          color: Color(0XFFFFDD4F),
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          ((bookModel.volumeInfo?.averageRating) ?? 00.00).toString(),
          style: StylsFil.textfont16.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '${(bookModel.volumeInfo?.pageCount) ?? 'pag cont 00'}',
          style: StylsFil.textfont14.copyWith(color: Color(0XFF707070)),
        )
      ],
    );
  }
}
