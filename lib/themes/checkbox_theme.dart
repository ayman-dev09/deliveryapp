import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/constants.dart';
import 'package:flutter/material.dart';

CheckboxThemeData checkboxThemeData = CheckboxThemeData(
  checkColor: WidgetStateProperty.all(Colors.white),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadious / 2)),
  ),
  side: const BorderSide(color: whileColor40),
);
