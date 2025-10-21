import 'package:deliveryapp/routes/routes_config.dart';
import 'package:deliveryapp/utils/size_config.dart';
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
      // home: LoginScreen(),
      getPages: RoutesConfig().getPages,
      builder: (context, child) {
        SizeConfig().init(context);
        return child!;
      },
    );
  }
}
