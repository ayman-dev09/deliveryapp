import 'package:deliveryapp/utils/size_config.dart';
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
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.8,
        top: SizeConfig.defaultSize! * 2.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //list title
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                listTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.defaultSize! * 1.4,
                ),
              ),
              Spacer(),
              Text(
                seeMoreText,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.defaultSize! * 1.1,
                ),
              ),
              SizedBox(width: SizeConfig.defaultSize! * 1.8),
            ],
          ),
          //last list title
          SizedBox(height: SizeConfig.defaultSize! * 0.4),
          // list
          SizedBox(
            height: SizeConfig.defaultSize! * 8,
            child: ListView.builder(
              itemCount: imageName.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize! * 0.4,
                      ),
                      child: item(index),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize! * 0.4,
                        left: SizeConfig.defaultSize! * 0.7,
                        right: SizeConfig.defaultSize! * 1.4,
                      ),
                      child: Text(
                        restaurantName,
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize! * 0.9,
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
        width: SizeConfig.defaultSize! * 5.5,
        height: SizeConfig.defaultSize! * 5.5,
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
              width: SizeConfig.defaultSize! * 3.7,
              height: SizeConfig.defaultSize! * 3.7,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
