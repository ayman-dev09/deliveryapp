import 'package:deliveryapp/view/pages/item_details_widgets/additions_widget.dart';
import 'package:flutter/material.dart';

class AdditionsListWidget extends StatelessWidget {
  const AdditionsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            AdditionsWidget(
              textAdditions: 'Multi Cereal Dough',
              price: '(+3 SAR)',
            ),
            AdditionsWidget(textAdditions: 'Protein Dough', price: '(+3 SAR)'),
            AdditionsWidget(textAdditions: 'Oat Dough', price: '(+3 SAR)'),
            AdditionsWidget(textAdditions: 'Potato Dough', price: '(+3 SAR)'),
            AdditionsWidget(textAdditions: 'Double cheese', price: '(+5 SAR)'),
          ],
        ),
      ),
    );
  }
}
