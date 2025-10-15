import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class ButtonBlackWidget extends StatelessWidget {
  const ButtonBlackWidget({
    super.key,
    required this.leftPadding,
    required this.rightPadding,
    required this.topPadding,
    required this.bottomPadding,
    required this.onTap,
    required this.textButton,
  });
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;
  final Function()? onTap;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        leftPadding,
        topPadding,
        rightPadding,
        bottomPadding,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: SizeConfig.defaultSize! * 4.2,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
          ),
          child: Center(
            child: Text(
              textButton,
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize! * 1.1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
