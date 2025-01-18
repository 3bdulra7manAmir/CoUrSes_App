import 'package:courses_app/Features/auth/login/login_view.dart';
import 'package:courses_app/Features/auth/register/phone_register.dart';
import 'package:courses_app/Features/auth/register/register.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{

  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kContinueWithPhoneView = '/continueWithPhoneView';

  static final router = GoRouter(
      routes:
      [
        GoRoute(
          path: kHomeView,
          builder: (context, state) => const HomeView(),
        ),

        GoRoute(
          path: kLoginView,
          builder: (context, state) => const LoginView(),
        ),

        GoRoute(
          path: kRegisterView,
          builder: (context, state) => const RegisterView(),
        ),

        GoRoute(
          path: '/',
          builder: (context, state) => const ContinueWithPhone(),
        ),

        GoRoute(
          path: kRegisterView,
          builder: (context, state) => const RegisterView(),
        ),
        
      ],
    );
}