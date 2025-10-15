import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class AddressTextfieldWidget extends StatelessWidget {
  const AddressTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.8,
        right: SizeConfig.defaultSize! * 1.8,
        top: SizeConfig.defaultSize! * 1.4,
      ),
      child: Container(
        width: double.infinity,
        height: SizeConfig.defaultSize! * 5.56,
        decoration: BoxDecoration(
          //color: Colors.amber,
          border: Border.all(color: paletteColor),
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 0.7),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: SizeConfig.defaultSize! * 0.7),
            Icon(Icons.location_on, color: Colors.green),
            SizedBox(width: SizeConfig.defaultSize! * 0.7),
            Expanded(
              child: TextField(
                focusNode: AlwaysFocusedNode(),
                decoration: InputDecoration(
                  label: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize! * 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  hint: Text(
                    'Address',
                    style: TextStyle(fontSize: SizeConfig.defaultSize! * 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Card(
              //elevation: 5,
              child: Container(
                width: SizeConfig.defaultSize! * 7,
                height: SizeConfig.defaultSize! * 2.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.defaultSize! * 0.7,
                  ),
                  border: Border.all(color: paletteColor),
                ),
                child: Center(child: Text('change')),
              ),
            ),
            SizedBox(width: SizeConfig.defaultSize! * 1),
          ],
        ),
      ),
    );
  }
}

//this class for make Textfiled always focused
class AlwaysFocusedNode extends FocusNode {
  @override
  bool get hasFocus => true;
}
