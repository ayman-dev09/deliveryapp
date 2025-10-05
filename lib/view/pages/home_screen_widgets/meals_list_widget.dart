// ignore_for_file: must_be_immutable

import 'package:deliveryapp/utils/constants.dart';
import 'package:deliveryapp/view/pages/general_widgets/horizontal_list_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/meal_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MealsListWidget extends StatelessWidget {
  MealsListWidget({super.key, required this.floatingButton});

  final dynamic Function()? floatingButton;

  List mealsImages = [
    kigCrispyComboImage,
    kfcMealImage,
    pastaItalianImage,
    pizzaImage,
    riceImage,
    tastyChickenBurgerImage,
  ];

  @override
  Widget build(BuildContext context) {
    return HorizontalListWidget(
      listTitle: 'Meals',
      seeMoreText: 'See More',
      imageName: mealsImages,
      mealName: 'King Chicken Crispy combo',
      restaurantName: 'Burger King',
      price: '20 SAR',
      distanceandTime: '30-40 min  6.2 km',
      floatingButton: floatingButton,
      onTap: () {
        Get.to(() => MealDetailsScreen());
      },
    );
  }
}
