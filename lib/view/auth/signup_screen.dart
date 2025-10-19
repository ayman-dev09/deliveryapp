import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_yellow_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/headline_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/textfield_email_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/textfield_password_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gentianblue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200),
          HeadlineWidget(
            text: 'Sign Up',
            leftPadding: SizeConfig.defaultSize! * 1.8,
            rightPadding: 0,
            topPadding: 0,
            bottomPadding: 0,
            fontSize: SizeConfig.defaultSize! * 1.8,
            color: whiteColor,
          ),
          TextfieldEmailWidget(
            leftPadding: SizeConfig.defaultSize! * 8.5,
            rightPadding: SizeConfig.defaultSize! * 8.5,
            topPadding: SizeConfig.defaultSize! * 1.5,
            bottomPadding: 0,
            hintText: 'Your Name',
          ),
          TextfieldEmailWidget(
            leftPadding: SizeConfig.defaultSize! * 8.5,
            rightPadding: SizeConfig.defaultSize! * 8.5,
            topPadding: SizeConfig.defaultSize! * 1.2,
            bottomPadding: 0,
            hintText: 'Email',
          ),
          TextfieldEmailWidget(
            leftPadding: SizeConfig.defaultSize! * 8.5,
            rightPadding: SizeConfig.defaultSize! * 8.5,
            topPadding: SizeConfig.defaultSize! * 1.2,
            bottomPadding: 0,
            hintText: 'Phone Number',
          ),
          TextfieldPasswordWidget(
            leftPadding: SizeConfig.defaultSize! * 8.5,
            rightPadding: SizeConfig.defaultSize! * 8.5,
            topPadding: SizeConfig.defaultSize! * 1.2,
            bottomPadding: 0,
            hintText: 'Password',
          ),
          TextfieldPasswordWidget(
            leftPadding: SizeConfig.defaultSize! * 8.5,
            rightPadding: SizeConfig.defaultSize! * 8.5,
            topPadding: SizeConfig.defaultSize! * 1.2,
            bottomPadding: 0,
            hintText: 'Confirm Password',
          ),
          ButtonYellowWidget(
            text: 'Signup',
            onTap: () {},
            paddingLeft: SizeConfig.defaultSize! * 11.5,
            paddingRight: SizeConfig.defaultSize! * 11.5,
            paddingTop: SizeConfig.defaultSize! * 1.6,
            paddingBottom: 0,
          ),
        ],
      ),
    );
  }
}
