import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class ButtonBlackWidget extends StatelessWidget {
  const ButtonBlackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.4,
        right: SizeConfig.defaultSize! * 1.4,
        bottom: SizeConfig.defaultSize! * 8.4,
      ),
      child: Container(
        width: double.infinity,
        height: SizeConfig.defaultSize! * 4.19,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
        ),
        child: Center(
          child: Text(
            'Order Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize! * 1.4,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
