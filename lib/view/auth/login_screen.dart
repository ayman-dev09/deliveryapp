import 'package:deliveryapp/routes/routes_names.dart';
import 'package:deliveryapp/themes/colors.dart';
import 'package:deliveryapp/utils/constants.dart';
import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_yellow_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/text_button_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/text_with_textbutton_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/textfield_email_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/textfield_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

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
              width: SizeConfig.defaultSize! * 14,
              height: SizeConfig.defaultSize! * 14,
              child: Image.asset(yallaLogoApp),
            ),
          ),
          TextfieldEmailWidget(
            leftPadding: SizeConfig.defaultSize! * 6,
            rightPadding: SizeConfig.defaultSize! * 6,
            topPadding: SizeConfig.defaultSize! * 3.5,
            bottomPadding: 0,
            hintText: 'Email',
          ),
          TextfieldPasswordWidget(
            leftPadding: SizeConfig.defaultSize! * 6,
            rightPadding: SizeConfig.defaultSize! * 6,
            topPadding: SizeConfig.defaultSize! * 1.5,
            bottomPadding: 0,
            hintText: 'Password',
          ),

          TextButtonWidget(
            paddingLeft: 0,
            paddingRight: SizeConfig.defaultSize! * 6,
            paddingTop: SizeConfig.defaultSize! * 1,
            paddingBottom: 0,
            onPressed: () {},
            text: 'Forget Password ?',
          ),
          TextWithTextbuttonWidget(
            paddingLeft: 0, //SizeConfig.defaultSize! * 6
            paddingRight: 0,
            paddingTop: SizeConfig.defaultSize! * 0.7,
            paddingBottom: 0,
            onPressed: () {
              Get.toNamed(signupScreen);
            },
            text: 'to register a new account ?',
            textButton: 'Signup',
          ),
          ButtonYellowWidget(
            text: 'Login',
            onTap: () {
              Get.toNamed(homeScreen);
            },
            paddingLeft: SizeConfig.defaultSize! * 10,
            paddingRight: SizeConfig.defaultSize! * 10,
            paddingTop: SizeConfig.defaultSize! * 2,
            paddingBottom: 0,
          ),
          SizedBox(height: SizeConfig.defaultSize! * 4),
        ],
      ),
    );
  }
}
