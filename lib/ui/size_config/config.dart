//A custom class for handling text size, margin szie and other responsiveness related issues
import 'package:flutter/material.dart';

class Config {
  //New config Modification

  // static keyword included so you can call this method without instantiating an object of it like so :
  // Config.yMargin(context, 2)
  static double yMargin(BuildContext context, double height) {
    height = height / 7.5;
    double screenHeight = MediaQuery.of(context).size.height / 100;
    return height * screenHeight;
  }

  // static keyword included so you can call this method without instantiating an object of it like so :
  // Config.xMargin(context, 2)
  static double xMargin(BuildContext context, double width) {
    width = width / 4.5;
    double screenWidth = MediaQuery.of(context).size.width / 100;
    return width * screenWidth;
  }

  // static keyword included so you can call this method without instantiating an object of it like so :
  // Config.textSize(context, 2)
  static double textSize(BuildContext context, double textSize) {
    textSize = textSize / 4.5;
    double screenWidth = MediaQuery.of(context).size.width / 100;
    return textSize * screenWidth;
  }
}
