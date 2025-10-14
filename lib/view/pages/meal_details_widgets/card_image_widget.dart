import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize! * 6,
        left: SizeConfig.defaultSize! * 1.8,
        right: SizeConfig.defaultSize! * 1.8,
      ),
      child: Card(
        // elevation: 10,
        child: Container(
          width: double.infinity,
          height: SizeConfig.defaultSize! * 17.4,
          decoration: BoxDecoration(
            //color: Colors.amber,
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1.1),
            image: DecorationImage(
              image: AssetImage('assets/list_food_images/burger.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Align(
            alignment: AlignmentGeometry.topLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.cancel, size: SizeConfig.defaultSize! * 2.45),
            ),
          ),
        ),
      ),
    );
  }
}
