import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class TextWithTextbuttonWidget extends StatelessWidget {
  const TextWithTextbuttonWidget({
    super.key,
    required this.paddingLeft,
    required this.paddingRight,
    required this.paddingTop,
    required this.paddingBottom,
    required this.onPressed,
    required this.text,
    required this.textButton,
  });
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final Function()? onPressed;
  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        paddingLeft,
        paddingTop,
        paddingRight,
        paddingBottom,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: TextStyle(color: paletteColor)),
          SizedBox(width: SizeConfig.defaultSize! * 0.4),
          InkWell(
            onTap: () {},
            child: Text(
              textButton,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
