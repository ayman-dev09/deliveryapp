import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddSubtractButtonWidget extends StatelessWidget {
  const AddSubtractButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.defaultSize! * 12.5,
      height: SizeConfig.defaultSize! * 4.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
        color: paletteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //SizedBox(width: SizeConfig.defaultSize! * 1.4),
          IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
          Spacer(),
          Text('1'),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          // SizedBox(width: SizeConfig.defaultSize! * 1.4),
        ],
      ),
    );
  }
}
