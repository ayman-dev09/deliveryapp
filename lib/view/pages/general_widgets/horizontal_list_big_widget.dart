import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class HorizontalListBigWidget extends StatelessWidget {
  const HorizontalListBigWidget({
    super.key,
    required this.listTitle,
    required this.seeMoreText,
    required this.imageName,
    required this.restaurantName,
    required this.subtitleRestaurant,
  });
  final String listTitle;
  final String seeMoreText;
  final List imageName;
  final String restaurantName;
  final String subtitleRestaurant;

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
            height: 180,
            child: ListView.builder(
              itemCount: imageName.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: item(index),
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

  Widget item(int index) {
    return Card(
      //elevation: 5,
      child: Container(
        width: 300,
        height: 170,
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
                imageName[index],
                width: double.maxFinite,
                height: 100,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
              child: Text(
                restaurantName,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
              child: Text(
                subtitleRestaurant,
                style: TextStyle(fontSize: 12, color: darkModerateOrange),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
