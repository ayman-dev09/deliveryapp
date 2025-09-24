import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class CheckoutOrderSummaryWidget extends StatelessWidget {
  const CheckoutOrderSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      child: Container(
        decoration: BoxDecoration(
          //color: Colors.amber,
          border: Border.all(color: paletteColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      'Order Total',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '41.43 SAR',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      'Delivery Fees',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '0.0 SAR',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      'Basket Discount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '12.43 SAR',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(color: paletteColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Text(
                      'You Saved',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      '-23.25 SAR',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Divider(color: paletteColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Text(
                      '29 SAR',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
