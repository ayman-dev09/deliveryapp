import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/all_order_choices_widget.dart';
import 'package:deliveryapp/view/pages/checkout_screen_widgets/checkout_screen.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_yellow_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/divider_bold_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/headline_widget.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/order_note_textfield_widget.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/order_summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Cart', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Wahmy Burger', style: TextStyle(fontSize: 10)),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: SizeConfig.defaultSize! * 2.8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllOrderChoicesWidget(),
            HeadlineWidget(text: 'Special Requests'),
            OrderNoteTextfieldWidget(),
            DividerBoldWidget(),
            HeadlineWidget(text: 'Order Summary'),
            OrderSummaryWidget(),
            Spacer(),
            ButtonYellowWidget(
              paddingLeft: SizeConfig.defaultSize! * 1.4,
              paddingRight: SizeConfig.defaultSize! * 1.4,
              paddingTop: 0,
              paddingBottom: SizeConfig.defaultSize! * 3,
              text: 'Checkout',
              onTap: () {
                Get.to(() => CheckoutScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
