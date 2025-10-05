import 'package:flutter/material.dart';

class CardImageWidget extends StatelessWidget {
  const CardImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
      child: Card(
        elevation: 10,
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            //color: Colors.amber,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/list_food_images/burger.png'),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Align(
              alignment: AlignmentGeometry.topLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.cancel, size: 35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
