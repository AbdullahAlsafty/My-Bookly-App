import 'package:flutter/material.dart';

class BooksDetailsBody extends StatelessWidget {
  const BooksDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomBookDetailsAppBar(),
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
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close_outlined)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
        ],
      ),
    );
  }
}
