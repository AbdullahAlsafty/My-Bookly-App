import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/hom_repo_impementation.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/view_model/feature_cubit/feature_books_cubit.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_image.dart';

class FeaturedBookListview extends StatefulWidget {
  const FeaturedBookListview({super.key});

  @override
  State<FeaturedBookListview> createState() => _FeaturedBookListviewState();
}

class _FeaturedBookListviewState extends State<FeaturedBookListview> {
  @override
  void initState() {
    BlocProvider.of<FeatureBooksCubit>(context).feachFeatureBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
        builder: (context, state) {
          if (state is FeatureBooksSuccessState) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return BookImage(
                      imageUrl: (state.books[index].volumeInfo?.imageLinks
                              ?.smallThumbnail) ??
                          'https://fastly.picsum.photos/id/322/200/200.jpg?hmac=h5_-NQtnn86YBEwVT2_4zcSeuxpCnMAdriBcZchtfas',
                    );
                  }),
            );
          } else if (state is FeatureBooksFaillureState) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
