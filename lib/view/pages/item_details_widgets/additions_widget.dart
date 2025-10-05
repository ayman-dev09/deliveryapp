import 'package:flutter/material.dart';

class AdditionsWidget extends StatefulWidget {
  const AdditionsWidget({
    super.key,
    required this.textAdditions,
    required this.price,
  });
  final String textAdditions;
  final String price;

  @override
  State<AdditionsWidget> createState() => _AdditionsWidgetState();
}

class _AdditionsWidgetState extends State<AdditionsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(widget.textAdditions, style: TextStyle(fontSize: 16)),
              Spacer(),
              Text(widget.price, style: TextStyle(fontSize: 16)),
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 35, top: 5),
          child: Divider(),
        ),
      ],
    );
  }
}
