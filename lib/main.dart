import 'package:flutter/material.dart';
import 'package:shared_food/ui/screens/splash_screen.dart';

void main() {
  runApp(const SharedFood());
}

class SharedFood extends StatelessWidget {
  const SharedFood({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SharedFood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}



