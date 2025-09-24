import 'package:deliveryapp/view/pages/checkout_screen_widgets/checkout_screen.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_yellow_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/divider_bold_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/headline_widget.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/order_choices_widget.dart';
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
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderChoicesWidget(),
            DividerBoldWidget(),
            HeadlineWidget(text: 'Special Requests'),
            OrderNoteTextfieldWidget(),
            DividerBoldWidget(),
            HeadlineWidget(text: 'Order Summary'),
            OrderSummaryWidget(),
            Spacer(),
            ButtonYellowWidget(
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
