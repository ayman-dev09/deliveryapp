import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static Orientation? orientation;
  static double? defaultSize;

  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
    orientation = mediaQueryData!.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight! * 0.024
        : screenWidth! * 0.024;
    debugPrint('defaultSize =====> $defaultSize');
  }
}

double getFont(double size) {
  double defaultsSize = SizeConfig.defaultSize! * size;
  return (defaultsSize / 10);
}

// Get the proportionate height as per screen size
double getHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}

// Get the proportionate width as per screen size
double getWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that Figma provides
  return (inputWidth / 375.0) * screenWidth!;
}

//It is very important that she be summoned in first page
// Widget build(BuildContext context) {
    
//     SizeConfig().init(context);
//     return Scaffold(