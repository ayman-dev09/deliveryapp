import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/add_price_button_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/add_subtract_button_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/additions_list_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/card_image_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/divider_large_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/meal_title_subtitle_widget.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/title_additions_widget.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Spacer(),
            TitleAdditionsWidget(
              title: 'Add The Items',
              subTitle: 'up to 4 selections',
            ),

            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize! * 1.8,
                right: SizeConfig.defaultSize! * 1.8,
                top: SizeConfig.defaultSize! * 2.1,
                bottom: SizeConfig.defaultSize! * 3,
              ),
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
      ),
    );
  }
}
