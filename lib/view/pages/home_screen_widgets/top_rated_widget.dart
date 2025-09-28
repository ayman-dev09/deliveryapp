// ignore_for_file: must_be_immutable

import 'package:deliveryapp/utils/constants.dart';
import 'package:deliveryapp/view/pages/general_widgets/horizontal_list_big_widget.dart';
import 'package:flutter/material.dart';

class TopRatedWidget extends StatelessWidget {
  TopRatedWidget({super.key});
  List restaurantImages = [
    burgerKingImage,
    dominoPizzaImage,
    maestrasImage,
    mcdonaldsImage,
    subwayImage,
  ];

  @override
  Widget build(BuildContext context) {
    return HorizontalListBigWidget(
      listTitle: 'Top Rated',
      seeMoreText: 'See More',
      imageName: restaurantImages,
      restaurantName: 'Burger King',
      subtitleRestaurant: 'Fast Food, Beverages',
    );
  }
}
