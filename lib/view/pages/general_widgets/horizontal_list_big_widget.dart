import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
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
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.8,
        top: SizeConfig.defaultSize! * 1.8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              SizedBox(width: SizeConfig.defaultSize! * 1.4),
            ],
          ),
          SizedBox(height: SizeConfig.defaultSize! * 0.4),
          SizedBox(
            height: SizeConfig.defaultSize! * 12.8,
            child: ListView.builder(
              itemCount: imageName.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize! * 0.4,
                      ),
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
        width: SizeConfig.defaultSize! * 20.9,
        height: SizeConfig.defaultSize! * 11.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
          //color: Colors.amber,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 0.7,
                left: SizeConfig.defaultSize! * 1.4,
                right: SizeConfig.defaultSize! * 1.4,
              ),
              child: Image.asset(
                imageName[index],
                width: double.maxFinite,
                height: SizeConfig.defaultSize! * 7,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 0.7,
                left: SizeConfig.defaultSize! * 0.7,
                right: SizeConfig.defaultSize! * 1.4,
              ),
              child: Text(
                restaurantName,
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize! * 0.85,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize! * 0.4,
                left: SizeConfig.defaultSize! * 0.7,
                right: SizeConfig.defaultSize! * 1.4,
              ),
              child: Text(
                subtitleRestaurant,
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize! * 0.85,
                  color: darkModerateOrange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
