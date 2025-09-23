import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class DividerBoldWidget extends StatelessWidget {
  const DividerBoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35),
      child: Divider(thickness: 10, color: paletteColor),
    );
  }
}
