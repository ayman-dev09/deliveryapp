import 'package:deliveryapp/utils/constants.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/general_widgets/divider_small_widget.dart';
import 'package:flutter/material.dart';

class RestaurantListWidget extends StatelessWidget {
  const RestaurantListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (_, index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 1,
                bottom: SizeConfig.defaultSize! * 1,
              ),
              child: item(index),
            ),
            DividerSmallWidget(
              leftPadding: 0,
              rightPadding: 0,
              topPadding: 0,
              bottomPadding: 0,
            ),
          ],
        );
      },
    );
  }

  Widget item(int index) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        SizeConfig.defaultSize! * 1.8,
        0,
        SizeConfig.defaultSize! * 1.8,
        0,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nafar Mandy Goat',
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize! * 1.2,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize! * 0.4),
              Text(
                'Goat meat and rice with a special\n mixture of spices cooked in\n the traditional way',
                textAlign: TextAlign.justify,
                maxLines: null,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(height: 1.2, letterSpacing: 0.5),
              ),
              SizedBox(height: SizeConfig.defaultSize! * 0.7),
              Text(
                '26.60 SAR',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: SizeConfig.defaultSize! * 1.2,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          Spacer(),
          Card(
            child: Container(
              width: SizeConfig.defaultSize! * 14,
              height: SizeConfig.defaultSize! * 8.4,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(kigCrispyComboImage)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
