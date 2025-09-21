import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/view/pages/item_details_widgets/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HorizontalListWidget extends StatelessWidget {
  const HorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: double.infinity,
        height: 320,
        //color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25),
          child: SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: item(),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget item() {
    return Card(
      elevation: 5,
      child: Container(
        width: 160,
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color: Colors.amber,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Image.asset(
                'assets/list_food_images/burger.png',
                width: double.maxFinite,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
              child: Text(
                'King Chicken Crispy combo',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                'Burger King',
                style: TextStyle(fontSize: 12, color: darkModerateOrange),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                '20 SAR',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                '30-40 min  6.2 km',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 20,
                  height: 20,
                  child: FloatingActionButton(
                    onPressed: () {
                      Get.to(() => ItemDetailsScreen());
                    },
                    child: Icon(Icons.add, size: 20),
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
