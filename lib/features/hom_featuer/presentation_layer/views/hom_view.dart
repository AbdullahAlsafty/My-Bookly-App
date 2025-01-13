import 'package:flutter/material.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/home_view_body.dart';

class HomView extends StatelessWidget {
  const HomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}
