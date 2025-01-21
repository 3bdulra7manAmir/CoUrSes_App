import 'package:courses_app/Features/auth/login/login_view.dart';
import 'package:courses_app/Features/auth/register/ph_otp_view.dart';
import 'package:courses_app/Features/auth/register/ph_register_view.dart';
import 'package:courses_app/Features/auth/register/register_success_view.dart';
import 'package:courses_app/Features/auth/register/register_view.dart';
import 'package:courses_app/Features/home/home_view.dart';
import 'package:courses_app/Features/media/products/no_products_view.dart';
import 'package:courses_app/Features/media/videos/no_videos_view.dart';
import 'package:courses_app/Features/network_conn/no_network_conn_view.dart';
import 'package:courses_app/Features/notifictations/no_notifictations_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{

  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';
  static const kRegisterView = '/registerView';
  static const kConWPhoneView = '/conWPhoneView';
  static const kPhoneOTPView = '/phoneOTPView';
  static const kSuccessPopUpView = '/successPopUpView';
  static const kNoNotifictationsView = '/noNotifictationsView';
  static const kNoNetworkConnectionView = '/noNetworkConnectionView';
  static const kNoVideosView = '/noVideosView';
  static const kNoProductsView = '/noProductsView';

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
          path: kConWPhoneView,
          builder: (context, state) => const ConWPhoneView(),
        ),

        GoRoute(
          path: kPhoneOTPView,
          builder: (context, state) => PhoneOTPView(),
        ),

        GoRoute(
          path: kSuccessPopUpView,
          builder: (context, state) => SuccessPopUpView(),
        ),

        GoRoute(
          path: kNoNotifictationsView,
          builder: (context, state) => NoNotifictationsView(),
        ),

        GoRoute(
          path: kNoNetworkConnectionView,
          builder: (context, state) => NoNetworkConnectionView(),
        ),

        GoRoute(
          path: kNoVideosView,
          builder: (context, state) => NoVideosView(),
        ),

        GoRoute(
          path: '/',
          builder: (context, state) => NoProductsView(),
        ),
        
      ],
    );
}