import 'package:flutter/material.dart';

class OrderNoteTextfieldWidget extends StatelessWidget {
  const OrderNoteTextfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
