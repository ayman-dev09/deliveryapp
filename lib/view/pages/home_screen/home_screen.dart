import 'package:deliveryapp/view/pages/home_screen/home_screen_widgets/appbar_home_screen_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [AppbarHomeScreenWidget()]));
  }
}
