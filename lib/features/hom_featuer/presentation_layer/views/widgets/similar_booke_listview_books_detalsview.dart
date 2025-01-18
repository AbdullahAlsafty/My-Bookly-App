import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_image.dart';

class SimilarBookeListviewBooksDetalsview extends StatelessWidget {
  const SimilarBookeListviewBooksDetalsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return BookImage(
                imageUrl: '',
              );
            }),
      ),
    );
  }
}
