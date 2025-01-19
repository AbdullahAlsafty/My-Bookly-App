import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/api_serveses.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/core/utils/located_services.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/hom_repo_impementation.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/repo/home_repo.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/view_model/feature_cubit/feature_books_cubit.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/view_model/newest_cubit/newest_books_cubit.dart';

void main() {
  // setupLocatedServicesPacge();

  runApp(MyBooklyApp());
}

class MyBooklyApp extends StatelessWidget {
  const MyBooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
              homeRepo:
                  HomRepoImpementation(apiServeses: ApiServeses(dio: Dio()))),
        ),
        BlocProvider(
            create: (context) => NewestBooksCubit(
                homeRepo: HomRepoImpementation(
                    apiServeses: ApiServeses(dio: Dio())))),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouts.route,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kprimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
