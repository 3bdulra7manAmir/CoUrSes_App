// ignore_for_file: unused_local_variable
import 'package:flutter/material.dart';


class KMediaQuery
{
  KMediaQuery(this.context);
  final BuildContext context;

  double get height => MediaQuery.of(context).size.height;
  double get width => MediaQuery.of(context).size.width;
}

const String kGtSectraFine = 'GT Sectra Fine';

class AppColors
{
  static const Color kCardColorPinkCardContainer = Color(0xffFFE7EE);
  static const Color kCardColorPinkLinearLine = Color(0xffEC7B9C);

  static const Color kCardColorBlueCardContainer = Color(0xffBAD6FF);
  static const Color kCardColorBlueLinearLine = Color(0xff3D5CFF);

  static const Color kCardColorGreenCardContainer = Color(0xffBAE0DB);
  static const Color kCardColorGreenLinearLine = Color(0xff398A80);

  static const Color kScaffoldBackgoundColorWhite = Colors.white;
  static const Color kCustomContainerBackGroundColor = Color(0xfff0f0f2);

  static const Color kSuccessPopUpViewColor = Color(0xff797988);

  static const Color kCustomOTPInputFieldColor = Color(0xFF512DA8);

  static const Color kCustomCoursesLanguageCardColor1 = Color(0xffCEECFE);
  static const Color kCustomCoursesLanguageCardColor2 = Color(0xffEFE0FF);
  static const Color kCustomCoursesLanguageCardColor3 = Color(0xffF8F2FF);
  static const Color kCustomCoursesLanguageCardColor4 = Color(0xff9065BE);

  static const Color kCustomSearchFieldColor = Color(0xffF4F3FD);

  static const Color kCustomAllTabCardColor1 = Color(0xffC4C4C4);
  static const Color kCustomAllTabCardColor2 = Color(0xffFFEBF0);
  static const Color kCustomAllTabCardColor3 = Color(0xffFF6905);

  static const Color kCustomMeetupCardColor = Color(0xff440687);

  static const Color kUserImageContainerColor = Color(0xffD8FFEF);

  static const Color kGreyColor = Colors.grey;
  static const Color kWhiteColor = Colors.white;
  static const Color kBrownColor = Colors.brown;
  static const Color kBlueColor = Colors.blue;
  
  static Color kGreyColor200 = Colors.grey[200]!;
  static Color kGreyColor300 = Colors.grey[300]!;
  static Color kGreyColor700 = Colors.grey[700]!;
  static Color kGreyColor800 = Colors.grey[800]!;

  static Color kBlueColor100 = Colors.blue[100]!;
  static Color kBlueColor800 = Colors.blue[800]!;

  Color kOrgangeAccent = Colors.orangeAccent;
  Color kBlackColor = Colors.black;
  Color kButtonsBlueColor = Color.fromRGBO(61, 93, 255, 1);
}

class AppIMGs
{
  String kBBIMGSVG = 'assets/images/svg/Eye.svg';
  String kFlippedBBIMGSVG = 'assets/images/svg/EyeFlipped.svg';

  String kProfileAvatarWithoutCameraSVG = 'assets/images/svg/Profile_Avatar_Without_Camera.svg';

  String kGooglePlatFormSVG = 'assets/images/svg/Google_Platform.svg';
  String kFacebookPlatFormSVG = 'assets/images/svg/Facebook_Platform.svg';

  String kContinueWithPhoneSVG = 'assets/images/svg/ContinueWithPhone.svg';

  String kSuccessSVG = 'assets/images/svg/Success.svg';

  String kHomeOffIconSVG = 'assets/images/svg/Home_off.svg';
  String kHomeOnIconSVG = 'assets/images/svg/Home_on.svg';
  
  String kCourseOffIconSVG = 'assets/images/svg/Course_off.svg';
  String kCourseOnIconSVG = 'assets/images/svg/Course_on.svg';

  String kSearchOffIconSVG = 'assets/images/svg/Search_off.svg';
  String kSearchOnIconSVG = 'assets/images/svg/Search_on.svg';

  String kMessagesOffIconSVG = 'assets/images/svg/Messages_off.svg';
  String kMessagesOnIconSVG = 'assets/images/svg/Messages_on.svg';

  String kUseraccountOffIconSVG = 'assets/images/svg/User_account_off.svg';
  String kUseraccountOnIconSVG = 'assets/images/svg/User_account_on.svg';

  String kProfileAvatarSVG = 'assets/images/svg/Profile_Avatar.svg';

  String kListeningToMusicSVG = 'assets/images/svg/ListeningToMusic.svg';

  String kDrawingSVG = 'assets/images/svg/Drawing.svg';

  String kBoy1SVG = 'assets/images/svg/boy1.svg';
  String kBoy2SVG = 'assets/images/svg/boy2.svg';
  String kBoy3SVG = 'assets/images/svg/boy3.svg';

  String kDegreeSVG = 'assets/images/svg/Degree.svg';

  String kVisaSVG = 'assets/images/svg/Visa.svg';

  String kClockSVG = 'assets/images/svg/Clock.svg';

  String kPaymentCardSVG = 'assets/images/svg/Payment_Card.svg';

  String kCorrectIconSVG = 'assets/images/svg/Correct_Icon.svg';

  String kDownArrowSVG = 'assets/images/svg/down_arrow.svg';

  String kBestSellerSVG = 'assets/images/svg/Best_Seller.svg';
  String kFlyingPaperSVG = 'assets/images/svg/Flying_Paper.svg';
  String kSpeakerHolderSVG = 'assets/images/svg/Speaker_Holder.svg';

  String kEasyLearningSVG = 'assets/images/svg/Easy_Learning.svg';
  String kStudyPlanSVG = 'assets/images/svg/Study_Plan.svg';
  String kTrialCourseSVG = 'assets/images/svg/Trial_Course.svg';

  String kNoNotificationsSVG = 'assets/images/svg/No_Notifications.svg';
  String kNoProductsSVG = 'assets/images/svg/No_Products.svg';
  String kNoVideosSVG = 'assets/images/svg/No_Videos.svg';

  String kSuccess2SVG = 'assets/images/svg/Success2.svg';

  String kSearchPNG = 'assets/images/png/search.png';
  String kFilterPNG = 'assets/images/png/filter.png';
  String kPersonPNG = 'assets/images/png/person.png';
  String kClosePNG = 'assets/images/png/close.png';

  String kSplashPNG = 'assets/images/png/splash.png';

}