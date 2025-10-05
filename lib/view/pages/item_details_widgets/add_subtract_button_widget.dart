import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class AddSubtractButtonWidget extends StatelessWidget {
  const AddSubtractButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: paletteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 20),
          IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
          Spacer(),
          Text('1'),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
