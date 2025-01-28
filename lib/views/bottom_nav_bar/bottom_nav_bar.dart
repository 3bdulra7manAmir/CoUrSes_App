import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/courses_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/home/home_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/notifictations_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/user_account/user_account_view.dart';
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
    HomeView(),
    CoursesView(),
    //SearchView(),
    MainNotifictationsView(),
    UserAccountView(),
  ];

  final List<BottomNavigationBarItem> _bottomNavBarItems =
  [
    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/svg/Home_off.svg'),
      activeIcon: SvgPicture.asset('assets/images/svg/Home_on.svg'),
      label: 'Home',
    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/svg/Course_off.svg'),
      activeIcon: SvgPicture.asset('assets/images/svg/Course_on.svg'),
      label: 'Course',
    ),

    // BottomNavigationBarItem(
    //   icon: SvgPicture.asset('assets/images/svg/Search_nav_bar.svg'),
    //   activeIcon: SvgPicture.asset('assets/images/svg/Search_nav_bar.svg'),
    //   label: 'Search',
    // ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/svg/Messages_off.svg'),
      activeIcon: SvgPicture.asset('assets/images/svg/Messages_on.svg'),
      label: 'Message',
    ),

    BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/images/svg/User_account_off.svg'),
      activeIcon: SvgPicture.asset('assets/images/svg/User_account_on.svg'),
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
          selectedItemColor: kButtonsBlueColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 10,
          
        ),
      ),
    );
  }
}