import 'package:deliveryapp/utils/constants.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/general_widgets/divider_small_widget.dart';
import 'package:deliveryapp/view/pages/restaurant_meals_widget/restaurant_list_widget.dart';
import 'package:flutter/material.dart';

class RestaurantMealsScreen extends StatelessWidget {
  const RestaurantMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              SizeConfig.defaultSize! * 1.4,
              0,
              0,
            ),
            child: Container(
              width: double.infinity,
              height: SizeConfig.defaultSize! * 10.5,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(burgerKingImage)),
              ),
            ),
          ),
          DividerSmallWidget(
            leftPadding: 0,
            rightPadding: 0,
            topPadding: SizeConfig.defaultSize! * 0.7,
            bottomPadding: 0,
          ),
          // SizedBox(height: SizeConfig.defaultSize! * 0.7),
          Expanded(child: RestaurantListWidget()),
        ],
      ),
    );
  }
}
