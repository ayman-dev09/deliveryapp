import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
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
    required this.onTap,
  });
  final String listTitle;
  final String seeMoreText;
  final List imageName;
  final String mealName;
  final String restaurantName;
  final String price;
  final String distanceandTime;
  final Function()? floatingButton;
  final Function()? onTap;

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
            height: SizeConfig.defaultSize! * 19,
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
                        right: SizeConfig.defaultSize! * 0.35,
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
    return InkWell(
      onTap: onTap,
      child: Card(
        // elevation: 2,
        child: Container(
          width: SizeConfig.defaultSize! * 11.1,
          height: SizeConfig.defaultSize! * 18.1,
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
                  width: double.infinity,
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
                  mealName,
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
                  restaurantName,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 0.85,
                    color: darkModerateOrange,
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
                  price,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 0.7,
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
                  distanceandTime,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize! * 0.9),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: SizeConfig.defaultSize! * 1.4,
                    height: SizeConfig.defaultSize! * 1.4,
                    child: FloatingActionButton(
                      onPressed: floatingButton,
                      child: Icon(
                        Icons.add,
                        size: SizeConfig.defaultSize! * 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
