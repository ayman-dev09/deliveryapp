import 'package:deliveryapp/utils/size_config.dart';
import 'package:flutter/material.dart';

class OrderNoteTextfieldWidget extends StatelessWidget {
  const OrderNoteTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize! * 1.4,
        right: SizeConfig.defaultSize! * 1.4,
        top: SizeConfig.defaultSize! * 1.4,
      ),
      child: TextField(
        focusNode: AlwaysFocusedNode(),
        decoration: InputDecoration(
          label: Text('Order note'),
          hint: Text('Add special request'),
          suffix: Icon(Icons.edit),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(),
          disabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
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
