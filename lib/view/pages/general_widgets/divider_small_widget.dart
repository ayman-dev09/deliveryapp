import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class DividerSmallWidget extends StatelessWidget {
  const DividerSmallWidget({
    super.key,
    required this.leftPadding,
    required this.rightPadding,
    required this.topPadding,
    required this.bottomPadding,
  });
  final double leftPadding;
  final double rightPadding;
  final double topPadding;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        leftPadding,
        topPadding,
        rightPadding,
        bottomPadding,
      ),
      child: Divider(color: paletteColor),
    );
  }
}
