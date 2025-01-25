import 'package:courses_app/views/auth/login/login_view.dart';
import 'package:courses_app/views/auth/register/ph_otp_view.dart';
import 'package:courses_app/views/auth/register/ph_register_view.dart';
import 'package:courses_app/views/auth/register/register_success_view.dart';
import 'package:courses_app/views/auth/register/register_view.dart';
import 'package:courses_app/views/clocking_in/clocking_in.dart';
import 'package:courses_app/views/course_search_filter/tester.dart';
import 'package:courses_app/views/courses/courses_view.dart';
import 'package:courses_app/views/home/home_view.dart';
import 'package:courses_app/views/media/products/no_products_view.dart';
import 'package:courses_app/views/media/videos/no_videos_view.dart';
import 'package:courses_app/views/network_conn/no_network_conn_view.dart';
import 'package:courses_app/views/notifictations/no_notifictations_view.dart';
import 'package:courses_app/views/success_purchase/success_purchase_view.dart';
import 'package:courses_app/views/trial_courses/widget/custom_screen_indicator.dart';
import 'package:courses_app/views/user_account/user_account_view.dart';
import 'package:courses_app/views/user_courses/courses_view.dart';
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
  static const kUserAccountView = '/userAccountView';
  static const kUserCoursesView = '/userCoursesView';
  static const kSuccessPurchaseView = '/successPurchaseView';
  static const kClockingInView = '/clockingInView';
  static const kThe3Screens = '/the3Screens';
  static const kBottomModalSheet = '/bottomModalSheet';
  static const kCoursesView = '/coursesView';

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
          builder: (context, state) => const PhoneOTPView(),
        ),

        GoRoute(
          path: kSuccessPopUpView,
          builder: (context, state) => const SuccessPopUpView(),
        ),

        GoRoute(
          path: kNoNotifictationsView,
          builder: (context, state) => const NoNotifictationsView(),
        ),

        GoRoute(
          path: kNoNetworkConnectionView,
          builder: (context, state) => const NoNetworkConnectionView(),
        ),

        GoRoute(
          path: kNoVideosView,
          builder: (context, state) => const NoVideosView(),
        ),

        GoRoute(
          path: kNoProductsView,
          builder: (context, state) => const NoProductsView(),
        ),

        GoRoute(
          path: kUserAccountView,
          builder: (context, state) => const UserAccountView(),
        ),

        GoRoute(
          path: kUserCoursesView,
          builder: (context, state) => const UserCoursesView(),
        ),

        GoRoute(
          path: kSuccessPurchaseView,
          builder: (context, state) => const SuccessPurchaseView(),
        ),

        GoRoute(
          path: kClockingInView,
          builder: (context, state) => const ClockingInView(),
        ),

        GoRoute(
          path: kThe3Screens,
          builder: (context, state) => const The3Screens(),
        ),

        GoRoute(
          path: kBottomModalSheet,
          builder: (context, state) => const HomeScreen(),
        ),

        GoRoute(
          path: '/',
          builder: (context, state) => CoursesView(),
        ),
      ],
    );
}