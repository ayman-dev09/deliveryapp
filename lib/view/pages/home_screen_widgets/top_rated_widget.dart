import 'package:deliveryapp/view/pages/general_widgets/horizontal_list_big_widget.dart';
import 'package:flutter/material.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return HorizontalListBigWidget(
      listTitle: 'Top Rated',
      seeMoreText: 'See More',
      imageName: 'assets/list_food_images/burger.png',
      restaurantName: 'Burger King',
      subtitleRestaurant: 'Fast Food, Beverages',
    );
  }
}
