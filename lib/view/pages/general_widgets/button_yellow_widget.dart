import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class ButtonYellowWidget extends StatelessWidget {
  const ButtonYellowWidget({
    super.key,
    required this.text,
    required this.onTap,
    required this.paddingLeft,
    required this.paddingRight,
    required this.paddingTop,
    required this.paddingBottom,
  });
  final String text;
  final Function()? onTap;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        paddingLeft,
        paddingTop,
        paddingRight,
        paddingBottom,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: SizeConfig.defaultSize! * 4.2,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
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
