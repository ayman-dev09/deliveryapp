import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class DividerLargeWidget extends StatelessWidget {
  const DividerLargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Divider(thickness: 15, color: paletteColor),
    );
  }
}
