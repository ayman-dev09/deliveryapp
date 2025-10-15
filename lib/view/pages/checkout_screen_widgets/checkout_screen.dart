import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/checkout_screen_widgets/address_textfield_widget.dart';
import 'package:deliveryapp/view/pages/checkout_screen_widgets/checkout_order_summary_widget.dart';
import 'package:deliveryapp/view/pages/checkout_screen_widgets/payment_details_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/button_black_widget.dart';
import 'package:deliveryapp/view/pages/general_widgets/headline_widget.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Checkout', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Wahmy Burger', style: TextStyle(fontSize: 10)),
          ],
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AddressTextfieldWidget(),
          HeadlineWidget(text: 'Payment Details'),
          PaymentDetailsWidget(),
          HeadlineWidget(text: 'Order Summary'),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1.4),
            child: Text(
              'By Ordering you agree to our Terms & Conditions, VAT 15% included',
            ),
          ),
          CheckoutOrderSummaryWidget(),
          Spacer(),
          ButtonBlackWidget(),
        ],
      ),
    );
  }
}
