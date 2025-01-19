import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: Icon(Icons.close_outlined)),
            Spacer(),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined))
          ],
        ),
      ],
    );
  }
}
