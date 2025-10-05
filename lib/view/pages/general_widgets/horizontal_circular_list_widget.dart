import 'package:flutter/material.dart';

class HorizontalCircularListWidget extends StatelessWidget {
  const HorizontalCircularListWidget({
    super.key,
    required this.listTitle,
    required this.seeMoreText,
    required this.imageName,
    required this.restaurantName,
  });
  final String listTitle;
  final String seeMoreText;
  final List imageName;
  final String restaurantName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //list title
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
          //last list title
          SizedBox(height: 5),
          // list
          SizedBox(
            height: 115,
            child: ListView.builder(
              itemCount: imageName.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: item(index),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 10,
                        right: 20,
                      ),
                      child: Text(
                        restaurantName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(180)),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(180),
          //color: Colors.amber,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageName[index],
              width: 50,
              height: 50,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
