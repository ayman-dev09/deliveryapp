import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.paddingLeft,
    required this.paddingRight,
    required this.paddingTop,
    required this.paddingBottom,
    required this.onPressed,
    required this.text,
  });
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentGeometry.topRight,
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          paddingLeft,
          paddingTop,
          paddingRight,
          paddingBottom,
        ),
        child: InkWell(
          onTap: onPressed,
          child: Text(text, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
