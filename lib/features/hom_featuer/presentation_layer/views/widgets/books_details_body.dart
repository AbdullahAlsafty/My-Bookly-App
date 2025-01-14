import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_rating.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_image.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(child: CustomBookDetailsAppBar()),
      ],
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.close_outlined)),
              Spacer(),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .17),
            child: BookImage(),
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: StylsFil.textfont30.copyWith(
                fontWeight: FontWeight.bold, fontFamily: kgTSectraFine),
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
          BooksRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }
}
