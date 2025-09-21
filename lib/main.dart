import 'package:deliveryapp/utils/size_config.dart';
import 'package:deliveryapp/view/pages/home_screen.dart';
//import 'package:deliveryapp/view/pages/item_details_widgets/item_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      //getPages: RoutesConfig().getPages,
    );
  }
}
