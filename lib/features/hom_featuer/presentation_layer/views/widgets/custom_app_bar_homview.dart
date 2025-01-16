import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/core/utils/errors/faillurs.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';

class CustomAppBarHomView extends StatelessWidget {
  const CustomAppBarHomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        right: 20,
      ),
      child: Row(
        children: [
          Image.asset(
            AssetData.logo,
            height: 24,
            width: 75,
          ),
          Spacer(),
          IconButton(
              onPressed: () async {
                // print('=============================');

                // String url =
                //     'https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&q=programming';
                // Dio dd = Dio();
                // Response vv = await dd.get(url);
                // try {
                //   var hh = vv.data;
                //   // print(hh["items"][0]);
                //   var bbb = [BookModel.fromJsonVz(hh['items'])];
                //   // print(bbb[0]);
                // } catch (e) {
                //   print(
                //       '//////////////*/*//*/*/*/*/*/*/*/*/*/*/*/************  $e');
                // }
                // print('=============================');
                GoRouter.of(context).go(AppRouts.kSearchView);
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
