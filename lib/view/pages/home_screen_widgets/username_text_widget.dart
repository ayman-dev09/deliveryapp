import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class UsernameTextWidget extends StatelessWidget {
  const UsernameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.8,
        right: SizeConfig.defaultSize! * 1.8,
        top: SizeConfig.defaultSize! * 1.1,
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'What would you to order, ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Ayman Hamdi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
