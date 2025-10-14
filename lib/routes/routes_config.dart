import 'package:deliveryapp/routes/routes_names.dart';
import 'package:deliveryapp/view/auth/login_screen.dart';
import 'package:deliveryapp/view/auth/signup_screen.dart';
import 'package:deliveryapp/view/pages/cart_screen_widgets/cart_screen.dart';
import 'package:deliveryapp/view/pages/checkout_screen_widgets/checkout_screen.dart';
import 'package:deliveryapp/view/pages/home_screen.dart';
import 'package:deliveryapp/view/pages/meal_details_widgets/meal_details_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutesConfig {
  // Pages for Test
  List<GetPage<dynamic>>? getPages = [
    // GetPage(name: testPge, page: () => TestPage()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: signupScreen, page: () => SignupScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: mealDetailsScreen, page: () => MealDetailsScreen()),
    GetPage(name: checkoutScreen, page: () => CheckoutScreen()),
    GetPage(name: cartScreen, page: () => CartScreen()),
  ];
}
