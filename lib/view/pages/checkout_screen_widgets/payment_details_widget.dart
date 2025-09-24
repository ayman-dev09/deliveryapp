import 'package:deliveryapp/themes/colors.dart';
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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: paletteColor),
        ),
        child: Row(
          children: [
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Use DeliveryApp Balance', style: TextStyle(fontSize: 16)),
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
            SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}
