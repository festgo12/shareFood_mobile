import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_food/ui/screens/onboarding_screens/get_started_screen.dart';
import 'package:shared_food/ui/screens/onboarding_screens/onboarding_screen.dart';
import '../ui/screens/splash_screen.dart';


class RouteNames{
  static const String splashScreen = 'splashScreen';
  static const String onBoardingScreen = 'onBoardingScreen';
  static const String getStartedScreen = 'getStartedScreen';



  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) => const SplashScreen(),
    onBoardingScreen: (context) => const OnBoardingScreen(),
    getStartedScreen: (context) => const GetStartedScreen(),
  };


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
      case getStartedScreen:
        return MaterialPageRoute(builder: (context) => const GetStartedScreen());

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