// import 'package:bookly/Features/Home/presentation/views/home_view.dart';


import 'package:courses_app/app/app_router.dart';
import 'package:courses_app/views/splash/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
//import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get_navigation/get_navigation.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin
{
  late AnimationController animationController;
  late Animation<Offset> textSildingAnim;
  @override
  void initState()
  {
    super.initState();
    initSlidingAnimation();
    navigateToHome(context: context); //MEe
  }

  @override
  void dispose()
  {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset('assets/images/png/splash.png', width: 300.w, height: 300.h,)),
            SizedBox(height: 10,),
            SlidingText(textSildingAnim: textSildingAnim),
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation()
  {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    textSildingAnim =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    
  }

  void navigateToHome({context}) //MEe "context"
  {
    Future.delayed(const Duration(seconds: 3), ()
    {
      //Get.to(()=> HomeView(), transition: Transition.zoom, duration: kTransDur);
      GoRouter.of(context).push(AppRouter.kThe3Screens);
    });
  }
}
