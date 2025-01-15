import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/similar_booke_listview_books_detalsview.dart';

class SimelarsBookSection extends StatelessWidget {
  const SimelarsBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          //textAlign: TextAlign.end,
          'You can also like',
          style: StylsFil.textfont14.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SimilarBookeListviewBooksDetalsview(),
      ],
    );
  }
}
