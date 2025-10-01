import 'package:deliveryapp/view/pages/cart_screen_widgets/cart_screen.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_yellow_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/appbar_home_screen_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/meals_list_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/top_rated_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/username_text_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarHomeScreenWidget(),
            UsernameTextWidget(),
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
              height: 300,
              margin: EdgeInsets.only(bottom: 0, left: 0, right: 0),
              padding: EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
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
                          paddingLeft: 20,
                          paddingRight: 0,
                          paddingTop: 0,
                          paddingBottom: 30,
                          text: 'Addition',
                          onTap: () {
                            Get.to(() => ItemDetailsScreen());
                          },
                        ),
                      ),
                      Expanded(
                        child: ButtonYellowWidget(
                          paddingLeft: 20,
                          paddingRight: 20,
                          paddingTop: 0,
                          paddingBottom: 30,
                          text: 'Go To Cart',
                          onTap: () {
                            Get.to(() => CartScreen());
                          },
                        ),
                      ),
                      Expanded(
                        child: ButtonYellowWidget(
                          paddingLeft: 0,
                          paddingRight: 20,
                          paddingTop: 0,
                          paddingBottom: 30,
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
