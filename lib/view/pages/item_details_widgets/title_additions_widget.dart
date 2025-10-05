import 'package:flutter/material.dart';

class TitleAdditionsWidget extends StatelessWidget {
  const TitleAdditionsWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 20),
          child: Text(subTitle, style: TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
