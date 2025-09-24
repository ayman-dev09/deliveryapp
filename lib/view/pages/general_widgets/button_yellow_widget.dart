import 'package:flutter/material.dart';

class ButtonYellowWidget extends StatelessWidget {
  const ButtonYellowWidget({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 120),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
