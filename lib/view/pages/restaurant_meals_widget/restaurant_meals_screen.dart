import 'package:deliveryapp/utils/constants.dart';
import 'package:flutter/material.dart';

class RestaurantMealsScreen extends StatelessWidget {
  const RestaurantMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(burgerKingImage)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('Nafar Mandy Goat'),
                          Text(
                            'Goat meat and rice with a special mixture of spices cooked in the traditional way',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
