import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AddPriceButtonWidget extends StatelessWidget {
  const AddPriceButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => CartScreen());
      },
      child: Container(
        width: SizeConfig.defaultSize! * 19.5,
        height: SizeConfig.defaultSize! * 4.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
          color: Colors.amber,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: SizeConfig.defaultSize! * 1.4),
            Text(
              'Add',
              style: TextStyle(
                fontSize: SizeConfig.defaultSize! * 1.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              '19 SAR',
              style: TextStyle(
                fontSize: SizeConfig.defaultSize! * 1.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize! * 1.4),
          ],
        ),
      ),
    );
  }
}
