import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
          '4.8',
          style: StylsFil.textfont16.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(12367)',
          style: StylsFil.textfont14.copyWith(color: Color(0XFF707070)),
        )
      ],
    );
  }
}
