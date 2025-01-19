import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_image.dart';

class SimilarBookeListviewBooksDetalsview extends StatefulWidget {
  const SimilarBookeListviewBooksDetalsview({super.key});

  @override
  State<SimilarBookeListviewBooksDetalsview> createState() =>
      _SimilarBookeListviewBooksDetalsviewState();
}

class _SimilarBookeListviewBooksDetalsviewState
    extends State<SimilarBookeListviewBooksDetalsview> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .feachSimilarBooks(anyTitle: 'any tiitle ');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
          builder: (context, state) {
            if (state is SimilarBooksSuccess) {
              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return BookImage(
                        imageUrl: state.books[index].volumeInfo!.imageLinks
                                ?.smallThumbnail ??
                            '');
                  });
            } else if (state is SimilarBooksFaillur) {
              return CustomErrorWidget(errorMessage: state.errorMessage);
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
