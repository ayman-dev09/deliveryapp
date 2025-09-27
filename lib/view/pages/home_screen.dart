import 'package:deliveryapp/view/pages/home_screen_widgets/appbar_home_screen_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/meals_list_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/top_rated_widget.dart';
import 'package:deliveryapp/view/pages/home_screen_widgets/username_text_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarHomeScreenWidget(),
            UsernameTextWidget(),
            MealsListWidget(),
            TopRatedWidget(),
            MealsListWidget(),
          ],
        ),
      ),
    );
  }
}
