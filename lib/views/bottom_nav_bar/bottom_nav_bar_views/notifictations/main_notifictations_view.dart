import 'package:courses_app/Core/shared/custom_tabbar_itself.dart';
import 'package:courses_app/core/utils/styles.dart';
import 'package:courses_app/views/bottom_nav_bar/bottom_nav_bar_views/notifictations/messages_view.dart';
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
                  tabBarControllerLength: 2,
                  tabBarWidgets: [Text('messages'), Text('notifictations')],
                  tabBarViewWidgets: [CustomMessageCard(), CustomMessageCard()],
                  
                ),
              ),

              // Expanded(child: MessagesListViewBuilder(
              //   returnedWidget: CustomMessageCard(),
              //   separatorBuilderWidget: SizedBox(height: 10,),
              // ),),
            ],
          ),
        ),
      ),
    );
  }
}
