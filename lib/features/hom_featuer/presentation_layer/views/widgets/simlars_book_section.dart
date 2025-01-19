import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/located_services.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/hom_repo_impementation.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/similar_booke_listview_books_detalsview.dart';

class SimelarsBookSection extends StatelessWidget {
  const SimelarsBookSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: StylsFil.textfont14.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        BlocProvider(
          create: (context) =>
              SimilarBooksCubit(homeRepo: getIt.get<HomRepoImpementation>()),
          child: SimilarBookeListviewBooksDetalsview(),
        ),
      ],
    );
  }
}
