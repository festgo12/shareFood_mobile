import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_food/ui/screens/activity_screens/all_activity_screen.dart';
import 'package:shared_food/ui/screens/auth_screen/login_screen.dart';
import 'package:shared_food/ui/screens/auth_screen/otp_screen.dart';
import 'package:shared_food/ui/screens/auth_screen/verify_mobile_num_screen.dart';
import 'package:shared_food/ui/screens/checkout_screen.dart';
import 'package:shared_food/ui/screens/confirm_order_screen.dart';
import 'package:shared_food/ui/screens/for_better_search_screen.dart';
import 'package:shared_food/ui/screens/onboarding_screens/get_started_screen.dart';
import 'package:shared_food/ui/screens/onboarding_screens/onboarding_screen.dart';
import 'package:shared_food/ui/screens/settings_screen.dart';
import 'package:shared_food/widgets/navigation_container.dart';
import '../ui/screens/splash_screen.dart';


class RouteNames{
  static const String splashScreen = 'splashScreen';
  static const String onBoardingScreen = 'onBoardingScreen';
  static const String getStartedScreen = 'getStartedScreen';
  static const String loginScreen = 'loginScreen';
  static const String verifyMobileScreen = 'verifyMobileScreen';
  static const String otpScreen = 'otpScreen';
  static const String navigationContainer = 'navigationContainer';
  static const String checkOutScreen = 'checkOutScreen';
  static const String confirmOrderScreen = 'confirmOrderScreen';
  static const String forBetterSearchScreen = 'forBetterSearchScreen';
  static const String settingsScreen = 'settingsScreen';
  static const String allActivityScreen = 'allActivityScreen';



  static Map<String, Widget Function(BuildContext)> routes = {
    splashScreen: (context) => const SplashScreen(),
    onBoardingScreen: (context) => const OnBoardingScreen(),
    getStartedScreen: (context) => const GetStartedScreen(),
    loginScreen: (context) => const LoginScreen(),
    verifyMobileScreen: (context) => const VerifyMobileScreen(),
    otpScreen: (context) => const OtpScreen(),
    navigationContainer: (context) => const NavigationContainer(),
    checkOutScreen: (context) => const CheckOutScreen(),
    confirmOrderScreen: (context) => const ConfirmOrderScreen(),
    forBetterSearchScreen: (context) => const ForBetterSearchScreen(),
    settingsScreen: (context) => const SettingsScreen(),
    allActivityScreen: (context) => const AllActivityScreen(),
  };


  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name){
      case splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen());
      case getStartedScreen:
        return MaterialPageRoute(builder: (context) => const GetStartedScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case verifyMobileScreen:
        return MaterialPageRoute(builder: (context) => const VerifyMobileScreen());
      case otpScreen:
        return MaterialPageRoute(builder: (context) => const OtpScreen());
      case navigationContainer:
        return MaterialPageRoute(builder: (context) => const NavigationContainer());
      case checkOutScreen:
        return MaterialPageRoute(builder: (context) => const CheckOutScreen());
      case confirmOrderScreen:
        return MaterialPageRoute(builder: (context) => const ConfirmOrderScreen());
      case forBetterSearchScreen:
        return MaterialPageRoute(builder: (context) => const ForBetterSearchScreen());
      case settingsScreen:
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      case allActivityScreen:
        return MaterialPageRoute(builder: (context) => const AllActivityScreen());

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