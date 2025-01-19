import 'package:courses_app/Features/auth/login/login_viewbody.dart';
import 'package:courses_app/Features/auth/register/ph_otp_viewbody.dart';
import 'package:courses_app/Features/auth/register/ph_register_viewbody.dart';
import 'package:courses_app/Features/auth/register/main_register_viewbody.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{

  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kContinueWithPhoneView = '/continueWithPhoneView';
  static const kPhoneOTPView = '/phoneOTPView';

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
          path: kContinueWithPhoneView,
          builder: (context, state) => const ContinueWithPhoneView(),
        ),


        GoRoute(
          path: '/',
          builder: (context, state) => PhoneOTPView(),
        ),
        
      ],
    );
}