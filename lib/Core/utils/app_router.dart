import 'package:courses_app/Features/auth/login/login_viewbody.dart';
import 'package:courses_app/Features/auth/register/ph_otp_viewbody.dart';
import 'package:courses_app/Features/auth/register/ph_register_viewbody.dart';
import 'package:courses_app/Features/auth/register/register_success.dart';
import 'package:courses_app/Features/auth/register/register_viewbody.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{

  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kConWPhoneView = '/conWPhoneView';
  static const kPhoneOTPView = '/phoneOTPView';
  static const kSuccessPopUp = '/successPopUpView';

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
          builder: (context, state) => const ConWPhoneView(),
        ),


        GoRoute(
          path: kPhoneOTPView,
          builder: (context, state) => PhoneOTPView(),
        ),

        GoRoute(
          path: kSuccessPopUp,
          builder: (context, state) => SuccessPopUpView(),
        ),
        
      ],
    );
}