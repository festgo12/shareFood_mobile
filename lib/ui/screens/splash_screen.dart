import 'package:flutter/material.dart';

import '../size_config/size_config_impl2.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    //startTimer();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      SizeConfig.init(context);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('images/bg_full.png'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 101,
              height: 101,
              decoration: const BoxDecoration(
                //color: Colors.black12,
                image: DecorationImage(
                  image: AssetImage('images/splashIcon.png')
                )
              ),
            ),
            SizedBox(height: 10,),
            Center(
              child: Container(
                width: 142,
                height: 34,
                decoration: BoxDecoration(
                  //color: Colors.black12,
                    image: DecorationImage(
                        image: AssetImage('images/dp.png')
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
