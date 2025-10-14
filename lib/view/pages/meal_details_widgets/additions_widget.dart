import 'package:deliveryapp/utils/size_config.dart';
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
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize! * 0.8,
            left: SizeConfig.defaultSize! * 1.8,
            right: SizeConfig.defaultSize! * 1.8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.textAdditions,
                style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.1),
              ),
              Spacer(),
              Text(
                widget.price,
                style: TextStyle(fontSize: SizeConfig.defaultSize! * 1.1),
              ),
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
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize! * 1.8,
            right: SizeConfig.defaultSize! * 1.8,
            top: SizeConfig.defaultSize! * 0.1,
          ),
          child: Divider(),
        ),
      ],
    );
  }
}
