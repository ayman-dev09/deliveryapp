import 'package:flutter/material.dart';

class UsernameTextWidget extends StatelessWidget {
  const UsernameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'What would you to order, ',
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Ayman Hamdi',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
