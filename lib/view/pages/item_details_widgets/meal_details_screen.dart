import 'package:deliveryapp/view/pages/item_details_widgets/add_price_button_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/add_subtract_button_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/additions_list_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/card_image_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/divider_large_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/meal_title_subtitle_widget.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/title_additions_widget.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardImageWidget(),
          MealTitleSubtitleWidget(),
          DividerLargeWidget(),
          TitleAdditionsWidget(
            title: 'Add The Items',
            subTitle: 'up to 4 selections',
          ),
          AdditionsListWidget(),
          TitleAdditionsWidget(
            title: 'Add The Items',
            subTitle: 'up to 4 selections',
          ),

          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 30),
            child: Row(
              children: [
                AddSubtractButtonWidget(),
                Spacer(),
                AddPriceButtonWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
