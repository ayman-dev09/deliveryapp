import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.8,
        right: SizeConfig.defaultSize! * 1.8,
        top: SizeConfig.defaultSize! * 1.1,
      ),
      child: Container(
        decoration: BoxDecoration(
          //color: Colors.amber,
          border: Border.all(),
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize! * 0.7,
            right: SizeConfig.defaultSize! * 0.7,
            bottom: SizeConfig.defaultSize! * 0.9,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.4),
                child: Row(
                  children: [
                    Text(
                      'Order Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '41.43 SAR',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.1),
                child: Row(
                  children: [
                    Text(
                      'Basket Discount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '12.43 SAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 0.7),
                child: Divider(color: paletteColor),
              ),
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.1),
                child: Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize! * 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '29 SAR',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
