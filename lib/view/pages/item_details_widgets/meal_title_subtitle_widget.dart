import 'package:flutter/material.dart';

class MealTitleSubtitleWidget extends StatelessWidget {
  const MealTitleSubtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            'Jebneh',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20),
          child: Text(
            'Simple soul food, the traditional melted cheese mankousheh',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
