import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/order_choices_widget.dart';
import 'package:flutter/material.dart';

class AllOrderChoicesWidget extends StatelessWidget {
  const AllOrderChoicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 18,
      child: SingleChildScrollView(
        child: Column(
          children: [
            OrderChoicesWidget(),
            OrderChoicesWidget(),
            OrderChoicesWidget(),
            OrderChoicesWidget(),
            OrderChoicesWidget(),
            OrderChoicesWidget(),
          ],
        ),
      ),
    );
  }
}
