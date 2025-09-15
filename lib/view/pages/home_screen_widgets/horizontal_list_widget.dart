import 'package:flutter/material.dart';

class HorizontalListWidget extends StatelessWidget {
  const HorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        width: double.infinity,
        height: 350,
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 25),
          child: SizedBox(
            width: 120,
            height: 220,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return item();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget item() {
    return Container(width: 100, height: 200, color: Colors.amber);
  }
}
