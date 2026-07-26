import 'package:bookly_app/features/home/date/presentation/view/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splashview.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => Splashview()),
      GoRoute(path: '/homeview', builder: (context, state) => HomeView()),
    ],
  );
}
