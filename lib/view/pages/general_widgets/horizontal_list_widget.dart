import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class HorizontalListWidget extends StatelessWidget {
  const HorizontalListWidget({
    super.key,
    required this.listTitle,
    required this.seeMoreText,
    required this.imageName,
    required this.mealName,
    required this.restaurantName,
    required this.price,
    required this.distanceandTime,
    required this.floatingButton,
  });
  final String listTitle;
  final String seeMoreText;
  final String imageName;
  final String mealName;
  final String restaurantName;
  final String price;
  final String distanceandTime;
  final Function()? floatingButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                listTitle,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Text(
                seeMoreText,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 5),
          SizedBox(
            height: 270,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
        ],
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
                imageName,
                width: double.maxFinite,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
              child: Text(
                mealName,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                restaurantName,
                style: TextStyle(fontSize: 12, color: darkModerateOrange),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                price,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                distanceandTime,
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
                    onPressed: floatingButton,
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
