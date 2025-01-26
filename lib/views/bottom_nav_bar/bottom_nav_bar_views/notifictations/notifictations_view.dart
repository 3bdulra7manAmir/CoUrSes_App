import 'package:courses_app/Core/shared/custom_listviewbuilder.dart';
import 'package:courses_app/Core/shared/custom_tabbar_itself.dart';
import 'package:courses_app/Core/utils/constants.dart';
import 'package:courses_app/core/utils/styles.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/widgets/messages_tabbar.dart';
import 'package:flutter/material.dart';

class MainNotifictationsView extends StatelessWidget
{
  const MainNotifictationsView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
          
              Text("Notifictations", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold)),

              const SizedBox(height: 20,),

              Expanded(
                child: WholeTabBar(
                  dividerColor: Colors.transparent,
                  tabBarWidgetsBoxDecorationColor: Colors.white.withValues(alpha: 0),
                  unselectedLabelColor: Colors.black,
                  indicatorColor: kButtonsBlueColor,
                  labelColor: Colors.black,
                  tabBarControllerLength: 2,
                  tabBarWidgets:
                  [
                    // Column(
                    //   children:
                    //   [
                    //     Padding(
                    //       padding: EdgeInsets.only(left: 80),
                    //       child: SizedBox(
                    //         height: 5,
                    //         child: CircleAvatar(backgroundColor: Colors.orange, )),
                    //     ),
                    //     Text('messages', style: TextStyle(fontWeight: FontWeight.bold),),
                    //   ],
                    // ),
                    Text('messages', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('notifictations', style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                  tabBarViewWidgets:
                  [
                    MessagesListViewBuilder(
                      returnedWidget: CustomMessageCard(
                        withImageMessage: false,
                      ),
                      returneditemCount: 9,
                      separatorBuilderWidget: SizedBox(height: 10,),
                    ),
                    MessagesListViewBuilder(
                      returnedWidget: CustomMessageCard(
                        withImageMessage: true,
                      ),
                      returneditemCount: 7,
                      separatorBuilderWidget: SizedBox(height: 10,),
                    ),
                  ],
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
