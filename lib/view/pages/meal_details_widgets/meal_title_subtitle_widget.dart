import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class MealTitleSubtitleWidget extends StatelessWidget {
  const MealTitleSubtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize! * 1.4,
            left: SizeConfig.defaultSize! * 1.8,
          ),
          child: Text(
            'Jebneh',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: SizeConfig.defaultSize! * 1.2,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize! * 0.4,
            left: SizeConfig.defaultSize! * 1.8,
          ),
          child: Text(
            'Simple soul food, the traditional melted cheese mankousheh',
            style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.2),
          ),
        ),
      ],
    );
  }
}
