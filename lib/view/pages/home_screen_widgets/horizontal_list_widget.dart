import 'package:flutter/material.dart';

class HorizontalListWidget extends StatelessWidget {
  const HorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: double.infinity,
        height: 260,
        color: Colors.blue,
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
    return Container(
      width: 160,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
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
            child: Text('King Chicken Crispy combo'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10, right: 20),
            child: Text(
              '20 SAR',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
            child: Text('30-40 min  6.2 km'),
          ),
        ],
      ),
    );
  }
}
