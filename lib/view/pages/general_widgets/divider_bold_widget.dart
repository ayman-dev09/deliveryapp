import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class DividerBoldWidget extends StatelessWidget {
  const DividerBoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 2.45),
      child: Divider(
        thickness: SizeConfig.defaultSize! * 0.7,
        color: paletteColor,
      ),
    );
  }
}
