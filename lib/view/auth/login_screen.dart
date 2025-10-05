import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gentianblue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(yallaLogoApp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, right: 80),
            child: Container(
              width: double.infinity,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hint: Text('Email', style: TextStyle(fontSize: 16)),
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
