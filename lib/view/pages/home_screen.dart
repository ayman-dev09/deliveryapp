import 'package:deliveryapp/view/pages/home_screen_widgets/appbar_home_screen_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/horizontal_list_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/username_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarHomeScreenWidget(),
          UsernameTextWidget(),
          HorizontalListWidget(),
        ],
      ),
    );
  }
}
