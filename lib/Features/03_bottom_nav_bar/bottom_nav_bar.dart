import 'package:courses_app/Core/utils/constants/app_colors.dart';
import 'package:courses_app/Core/utils/constants/app_images.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/courses/courses_view.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/home/home_view.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/notifictations/notifictations_view.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/account/user_account_view.dart';
import 'package:courses_app/Features/03_bottom_nav_bar/bottom_nav_bar_views/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarView extends StatefulWidget
{
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView>
{
  int _selectedIndex = 0;

  final List<Widget> _pages =
  [
    const HomeView(),
    const CoursesView(),
    const SearchView(),
    const MainNotifictationsView(),
    const UserAccountView(),
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems =
  [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppIMGs().kHomeOffIconSVG),
      activeIcon: SvgPicture.asset(AppIMGs().kHomeOnIconSVG),
      label: 'Home',
    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppIMGs().kCourseOffIconSVG),
      activeIcon: SvgPicture.asset(AppIMGs().kCourseOnIconSVG),
      label: 'Course',
    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppIMGs().kSearchOffIconSVG),
      activeIcon: SvgPicture.asset(AppIMGs().kSearchOnIconSVG),
      label: 'Search',
    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppIMGs().kMessagesOffIconSVG),
      activeIcon: SvgPicture.asset(AppIMGs().kMessagesOnIconSVG),
      label: 'Message',
    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppIMGs().kUseraccountOffIconSVG),
      activeIcon: SvgPicture.asset(AppIMGs().kUseraccountOnIconSVG),
      label: 'Account',
    ),
  ];

  void _onItemTapped(int index)
  {
    setState(() {_selectedIndex = index;});
  }

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: _bottomNavBarItems,
          selectedItemColor: AppColors().kButtonsBlueColor,
          unselectedItemColor: AppColors.kGreyColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.kWhiteColor,
          elevation: 10,
          
        ),
      ),
    );
  }
}