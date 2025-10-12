import 'package:deliveryapp/utils/constants.dart';
import 'package:deliveryapp/view/pages/general_widgets/horizontal_circular_list_widget.dart';
import 'package:flutter/material.dart';

class ExploreListWidget extends StatelessWidget {
  ExploreListWidget({super.key});
  List restaurantImages = [
    burgerKingImage,
    dominoPizzaImage,
    maestrasImage,
    mcdonaldsImage,
    subwayImage,
  ];

  @override
  Widget build(BuildContext context) {
    return HorizontalCircularListWidget(
      listTitle: 'Explore cuisines',
      seeMoreText: 'See More',
      imageName: restaurantImages,
      restaurantName: 'Burger King',
    );
  }
}
