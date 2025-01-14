import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly/constants.dart';
import 'package:my_bookly/core/utils/constants/app_routs.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/hom_view.dart';
import 'package:my_bookly/features/splash_featuer/presentation/vews/splash_view.dart';

void main() {
  runApp(MyBooklyApp());
}

class MyBooklyApp extends StatelessWidget {
  const MyBooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouts.route,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kprimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
    );
  }
}
