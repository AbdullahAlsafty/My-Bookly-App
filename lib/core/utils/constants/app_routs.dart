import 'package:go_router/go_router.dart';
import 'package:my_bookly/features/hom_featuer/data_layer/models/book_model/book_model.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/books_details_view.dart';
import 'package:my_bookly/features/hom_featuer/presentation_layer/views/hom_view.dart';
import 'package:my_bookly/features/search_featuer/presentation/views/search_view.dart';
import 'package:my_bookly/features/splash_featuer/presentation/vews/splash_view.dart';

abstract class AppRouts {
  static const String kSplashView = '/';
  static const String kHomeView = '/homeView';
  static const String kBooksDetailsView = '/BookDetails';
  static const String kSearchView = '/SearchView';

  static GoRouter route = GoRouter(
    routes: [
      GoRoute(
          path: kSplashView,
          builder: (context, state) {
            // final BookModel bookModel = state.extra as BookModel;
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
      GoRoute(
          path: kSearchView,
          builder: (context, state) {
            return SearchView();
          }),
    ],
  );
}
