import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/splash_featuer/presentation/vews/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: SplashViewBody());
  }
}
