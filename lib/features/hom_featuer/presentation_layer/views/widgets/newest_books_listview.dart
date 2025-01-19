import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/core/utils/widgets/custom_error_widget.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/view_model/newest_cubit/newest_books_cubit.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/books_listview_item.dart';

class NewestBooksListViw extends StatefulWidget {
  const NewestBooksListViw({super.key});

  @override
  State<NewestBooksListViw> createState() => _NewestBooksListViwState();
}

class _NewestBooksListViwState extends State<NewestBooksListViw> {
  @override
  void initState() {
    BlocProvider.of<NewestBooksCubit>(context).feachNewestBook();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: BooksListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is NewestBooksFaillurState) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else if (state is NewestBooksLoadedState) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Container(
            color: Colors.red,
            child: Text('        initial ..........>>>.'),
          );
        }
      },
    );
  }
}
