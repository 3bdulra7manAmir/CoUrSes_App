import 'package:courses_app/views/auth/login/login_view.dart';
import 'package:courses_app/views/auth/register/ph_otp_view.dart';
import 'package:courses_app/views/auth/register/ph_register_view.dart';
import 'package:courses_app/views/auth/register/register_success_view.dart';
import 'package:courses_app/views/auth/register/register_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/notifictations_view.dart';
import 'package:courses_app/views/clocking_in/clocking_in_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/search_filter/caller.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/courses_view.dart';
import 'package:courses_app/views/course_preview/course_preview_view.dart';
import 'package:courses_app/views/no_views/no_products/no_products_view.dart';
import 'package:courses_app/views/no_views/no_videos/no_videos_view.dart';
import 'package:courses_app/views/no_views/no_network_conn/no_network_conn_view.dart';
import 'package:courses_app/views/no_views/no_notifictations/no_notifictations_view.dart';
import 'package:courses_app/views/splash/splash_view_body.dart';
import 'package:courses_app/views/success_purchase/success_purchase_view.dart';
import 'package:courses_app/views/intro_views/widget/custom_screen_indicator.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/user_account/user_account_view.dart';
import 'package:courses_app/views/user_courses/courses_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{

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
  static const kMainNotifictationsView = '/mainNotifictationsView';
  static const kCoursePreviewView = '/coursePreviewView';
  static const kBottomNavBar = '/bottomNavBar';
  static const kSplashView = '/splashView';

  static final router = GoRouter(
      routes:
      [

        GoRoute(
          path: kSplashView,
          builder: (context, state) => const SplashView(),
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
          path: kCoursesView,
          builder: (context, state) => const CoursesView(),
        ),

        GoRoute(
          path: '/',
          builder: (context, state) => const MainNotifictationsView(),
        ),

        GoRoute(
          path: kCoursePreviewView,
          builder: (context, state) => const CoursePreviewView(),
       ),

        GoRoute(
          path: kBottomNavBar,
          builder: (context, state) => const BottomNavBarView(),
        ),
      ],
    );
}