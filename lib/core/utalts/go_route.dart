import 'package:bookly_app/features/home/presentation/view/book_detailsView.dart';
import 'package:bookly_app/features/home/presentation/view/home_view.dart';
import 'package:bookly_app/features/search/presentation/view/searchview.dart';
import 'package:bookly_app/features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Splashview()),
      GoRoute(path: '/homeview', builder: (context, state) => HomeView()),
      GoRoute(
        path: '/bookdetailsview',
        builder: (context, state) => BookDetailsview(),
      ),
      GoRoute(path: '/search', builder: (context, state) => Searchview()),
    ],
  );
}
