import 'package:deliveryapp/themes/colors.dart';
import 'package:flutter/material.dart';

class AddressTextfieldWidget extends StatelessWidget {
  const AddressTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          //color: Colors.amber,
          border: Border.all(color: paletteColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Icon(Icons.location_on, color: Colors.green),
            SizedBox(width: 10),
            Expanded(
              child: TextField(
                focusNode: AlwaysFocusedNode(),
                decoration: InputDecoration(
                  label: Text(
                    'Home',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  hint: Text('Address', style: TextStyle(fontSize: 14)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Card(
              //elevation: 5,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: paletteColor),
                ),
                child: Center(child: Text('change')),
              ),
            ),
            SizedBox(width: 15),
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
