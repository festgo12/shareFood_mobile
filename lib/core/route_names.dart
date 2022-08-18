import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../ui/screens/splash_screen.dart';


class RouteNames{
  static const String splashScreen = 'splashScreen';






  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) => const SplashScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

    //Default Route is error route
      default:
        return CupertinoPageRoute(
            builder: (context) => errorView(settings.name!));
    }
  }

  static Widget errorView(String name) {
    return Scaffold(body: Center(child: Text('404 $name View not found')));
  }
}