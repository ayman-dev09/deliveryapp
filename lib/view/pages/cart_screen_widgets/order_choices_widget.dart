import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/general_widgets/divider_small_widget.dart';
import 'package:flutter/material.dart';

class OrderChoicesWidget extends StatelessWidget {
  const OrderChoicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 1.8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Classic Angus Hngerstaion',
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize! * 0.4,
                    ),
                    child: Text(
                      '1x Water',
                      style: TextStyle(fontSize: SizeConfig.defaultSize! * 0.9),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                '29 SAR',
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize! * 1.1,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          DividerSmallWidget(
            leftPadding: 0,
            rightPadding: 0,
            topPadding: 0,
            bottomPadding: 0,
          ),
        ],
      ),
    );
  }
}
