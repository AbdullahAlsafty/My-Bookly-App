import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:my_bookly/constants.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 27 / 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}

// Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(image: NetworkImage(imageUrl)),
//               color: Colors.yellow,
//             ),
//           ),
