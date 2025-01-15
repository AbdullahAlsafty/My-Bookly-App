import 'package:flutter/material.dart';

class CustomTextFildSearchView extends StatelessWidget {
  const CustomTextFildSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBorder(),
        focusedBorder: buildOutLineInputBorder(),
        hintText: 'Search',
        suffix: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
