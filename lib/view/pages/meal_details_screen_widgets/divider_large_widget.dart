import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class DividerLargeWidget extends StatelessWidget {
  const DividerLargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 1.7),
      child: Divider(
        thickness: SizeConfig.defaultSize! * 1,
        color: paletteColor,
      ),
    );
  }
}
