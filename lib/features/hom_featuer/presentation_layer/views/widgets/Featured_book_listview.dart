import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';
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
      child: BlocConsumer<FeatureBooksCubit, FeatureBooksState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is FeatureBooksSuccessState) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouts.kBooksDetailsView,
                            extra: state.books[index]);
                      },
                      child: BookImage(
                        imageUrl: state.books[index].volumeInfo!.imageLinks
                                ?.smallThumbnail ??
                            'https://fastly.picsum.photos/id/322/200/200.jpg?hmac=h5_-NQtnn86YBEwVT2_4zcSeuxpCnMAdriBcZchtfas',
                      ),
                    );
                  }),
            );
          } else if (state is FeatureBooksFaillureState) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else if (state is FeatureBooksLoadedState) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Container(
              color: Colors.green,
              child: Text('initial state .........'),
            );
          }
        },
      ),
    );
  }
}
