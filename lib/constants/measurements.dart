
import 'package:flutter/material.dart';

class ScreenSize {

  // width
  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // height
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}