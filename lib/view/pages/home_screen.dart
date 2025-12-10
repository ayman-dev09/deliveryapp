import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/cart_screen.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_yellow_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/appbar_home_screen_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/explore_list_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/meals_list_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/top_rated_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/username_text_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_screen_widgets/meal_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  HomeScreen({super.key});
  //HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(child: Container()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarHomeScreenWidget(scaffoldKey: scaffoldKey),
            UsernameTextWidget(),
            ExploreListWidget(),
            MealsListWidget(
              floatingButton: () {
                showMyDialog(context);
              },
            ),
            TopRatedWidget(),
            MealsListWidget(floatingButton: () {}),
          ],
        ),
      ),
    );
  }

  void showMyDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'CustomDialog',
      fullscreenDialog: true,
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.bottomCenter, // يظهر من الأسفل
          child: Material(
            color: Colors.transparent,
            child: Container(
              width: double.infinity,
              height: SizeConfig.defaultSize! * 21,
              margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(SizeConfig.defaultSize! * 1),
                  topRight: Radius.circular(SizeConfig.defaultSize! * 1),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("aaa"),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: ButtonYellowWidget(
                          paddingLeft: SizeConfig.defaultSize! * 1.4,
                          paddingRight: 0,
                          paddingTop: 0,
                          paddingBottom: SizeConfig.defaultSize! * 2.1,
                          text: 'Addition',
                          onTap: () {
                            Get.to(() => MealDetailsScreen());
                          },
                        ),
                      ),
                      Expanded(
                        child: ButtonYellowWidget(
                          paddingLeft: SizeConfig.defaultSize! * 1.4,
                          paddingRight: SizeConfig.defaultSize! * 1.4,
                          paddingTop: 0,
                          paddingBottom: SizeConfig.defaultSize! * 2.1,
                          text: 'Go To Cart',
                          onTap: () {
                            Get.to(() => CartScreen());
                          },
                        ),
                      ),
                      Expanded(
                        child: ButtonYellowWidget(
                          paddingLeft: 0,
                          paddingRight: SizeConfig.defaultSize! * 1.4,
                          paddingTop: 0,
                          paddingBottom: SizeConfig.defaultSize! * 2.1,
                          text: 'Add Cart',
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween(
            begin: Offset(0, 1),
            end: Offset(0, 0),
          ).animate(animation),
          child: child,
        );
      },
    );
  }
}
