import 'package:flutter/material.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/widgets/custom_button.dart';

class BoxActionBookDetailsview extends StatelessWidget {
  const BoxActionBookDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton(
          text: '19.99€',
          style: StylsFil.textfont16
              .copyWith(fontWeight: FontWeight.w900, color: Colors.black),
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
        ),
        CustomButton(
          text: 'Free preview',
          style: StylsFil.textfont16.copyWith(color: Colors.white),
          backgroundColor: Color(0XFFEF8262),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ],
    );
  }
}
