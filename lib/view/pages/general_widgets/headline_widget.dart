import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class HeadlineWidget extends StatelessWidget {
  const HeadlineWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.4,
        right: SizeConfig.defaultSize! * 1.4,
        top: SizeConfig.defaultSize! * 1.4,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: SizeConfig.defaultSize! * 1.2,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
