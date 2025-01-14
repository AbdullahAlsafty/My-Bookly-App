import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/books_details_view.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/hom_view.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/widgets/books_details_body.dart';
import 'package:my_bookly/features/splash_featuer/presentation/vews/splash_view.dart';

abstract class AppRouts {
  static const String kSplashView = '/';
  static const String kHomeView = '/homeView';
  static const String kBooksDetailsView = '/BookDetails';

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(
          path: kSplashView,
          builder: (context, state) {
            return SplashView();
          }),
      GoRoute(
          path: kHomeView,
          builder: (context, state) {
            return HomView();
          }),
      GoRoute(
          path: kBooksDetailsView,
          builder: (context, state) {
            return BooksDetailsView();
          }),
    ],
  );
}
