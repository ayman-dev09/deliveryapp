import 'package:deliveryapp/view/pages/general_widgets/horizontal_list_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MealsListWidget extends StatelessWidget {
  const MealsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalListWidget(
      listTitle: 'Meals',
      seeMoreText: 'See More',
      imageName: 'assets/list_food_images/burger.png',
      mealName: 'King Chicken Crispy combo',
      restaurantName: 'Burger King',
      price: '20 SAR',
      distanceandTime: '30-40 min  6.2 km',
      floatingButton: () {
        Get.to(() => ItemDetailsScreen());
      },
    );
  }
}
