import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Cart', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Wahmy Burger', style: TextStyle(fontSize: 10)),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Classic Angus Hngerstaion',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('1x Water', style: TextStyle(fontSize: 12)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        '29 SAR',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Card(
                  elevation: 10,
                  child: Container(
                    width: 140,
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage('assets/list_food_images/burger.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Divider(thickness: 15, color: paletteColor),
            ),
            //----------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Special Requests',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            //----------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Divider(thickness: 15, color: paletteColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Order Summary',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
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
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text('29 SAR', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 120),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Checkout',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
