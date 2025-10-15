import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class PaymentDetailsWidget extends StatefulWidget {
  const PaymentDetailsWidget({super.key});

  @override
  State<PaymentDetailsWidget> createState() => _PaymentDetailsWidgetState();
}

class _PaymentDetailsWidgetState extends State<PaymentDetailsWidget> {
  bool _giveVerse = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.4,
        right: SizeConfig.defaultSize! * 1.4,
        top: SizeConfig.defaultSize! * 1,
      ),
      child: Container(
        width: double.infinity,
        height: SizeConfig.defaultSize! * 5.56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
          border: Border.all(color: paletteColor),
        ),
        child: Row(
          children: [
            SizedBox(width: SizeConfig.defaultSize! * 1),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Use DeliveryApp Balance',
                  style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.1),
                ),
                Text('0.0 SAR'),
              ],
            ),
            Spacer(),
            Switch(
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: paletteColor,
              activeThumbColor: Colors.green,
              value: _giveVerse,
              onChanged: (bool newValue) {
                setState(() {
                  _giveVerse = newValue;
                });
              },
            ),
            SizedBox(width: SizeConfig.defaultSize! * 1),
          ],
        ),
      ),
    );
  }
}
