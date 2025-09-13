// import 'dart:ui';
// import 'package:get/get.dart';

// class MyLocalController extends GetxController {
//   Locale? language;
//   MyServices services = Get.find();

//   changeLanguage(String langCode) {
//     Locale locale = Locale(langCode);
//     services.sharedPreferences.setString("lang", langCode);
//     Get.updateLocale(locale);
//   }

//   @override
//   void onInit() {
//     String? sharedPrefLang = services.sharedPreferences.getString("lang");
//     if (sharedPrefLang == "ar") {
//       language = const Locale("ar");
//     } else if (sharedPrefLang == "en") {
//       language = const Locale("en");
//     } else {
//       language = Locale(Get.deviceLocale!.languageCode);
//     }
//     super.onInit();
//   }
// }
