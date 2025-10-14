import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class TitleAdditionsWidget extends StatelessWidget {
  const TitleAdditionsWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

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
            title,
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
            subTitle,
            style: TextStyle(fontSize: SizeConfig.defaultSize! * 1),
          ),
        ),
      ],
    );
  }
}
