import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constants.dart';

import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';

import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  final BookModel bookModel;
  const BooksListViewItem({
    super.key,
    required this.bookModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () async {
          GoRouter.of(context)
              .push(AppRouts.kBooksDetailsView, extra: bookModel);
        },
        child: Row(
          children: [
            SizedBox(
              height: 125,
              child: AspectRatio(
                aspectRatio: 26 / 40,
                child: CachedNetworkImage(
                  imageUrl:
                      (bookModel.volumeInfo!.imageLinks?.smallThumbnail) ?? '',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  placeholder: (context, url) =>
                      Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      (bookModel.volumeInfo!.title)!,
                      style: StylsFil.textfont20
                          .copyWith(fontFamily: kgTSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo!.authors?[0] ?? '0',
                    style: StylsFil.textfont14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: StylsFil.textfont20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      BooksRating(
                        bookModel: bookModel,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
