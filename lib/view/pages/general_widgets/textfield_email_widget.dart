import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class TextfieldEmailWidget extends StatelessWidget {
  const TextfieldEmailWidget({
    super.key,
    required this.leftPadding,
    required this.rightPadding,
    required this.topPadding,
    required this.bottomPadding,
    required this.hintText,
  });
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        leftPadding,
        topPadding,
        rightPadding,
        bottomPadding,
      ),
      child: Container(
        width: double.infinity,
        height: SizeConfig.defaultSize! * 3.5,
        padding: EdgeInsets.only(left: SizeConfig.defaultSize!),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.4),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
