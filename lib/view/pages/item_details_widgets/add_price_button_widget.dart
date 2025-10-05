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
        width: 280,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.amber,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 20),
            Text('Add', style: TextStyle(fontWeight: FontWeight.bold)),
            Spacer(),
            Text('19 SAR', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
