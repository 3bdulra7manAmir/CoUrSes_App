import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/courses/courses_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/home/home_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/notifictations_view.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/user_account/user_account_view.dart';
import 'package:flutter/material.dart';

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
          items: 
          [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: kButtonsBlueColor,),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud_circle_sharp, color: kButtonsBlueColor,),
              label: 'Course',
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.search),
            //   label: 'Search',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message, color: kButtonsBlueColor,),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: kButtonsBlueColor,),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
