import 'package:courses_app/Features/auth/login/login_view.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{

  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';

  static final router = GoRouter(
      routes:
      [
        GoRoute(
          path: '/',
          builder: (context, state) => LoginView(),
        ),
        GoRoute(
          path: kHomeView,
          builder: (context, state) => const HomeView(),
        ),
      ],
    );
}