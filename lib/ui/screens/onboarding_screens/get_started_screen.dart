import 'package:flutter/material.dart';
import 'package:shared_food/ui/size_config/size_config_impl2.dart';
import 'package:shared_food/widgets/custom_botton.dart';

import '../../../core/route_names.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/getstarted.png'),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                //color: Colors.yellow,
                  image: DecorationImage(
                      image: AssetImage('images/shadeimage.png'),
                      fit: BoxFit.cover
                  )
              ),
              height: 450,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 290.0,left: 40),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/splashIcon.png'),
                                //fit: BoxFit.cover
                            )
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text('SharedFood',style: TextStyle(
                        fontSize: 19,fontWeight: FontWeight.bold
                      ),)
                    ],
                  ),
                ),
              )
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.all(SizeConfig.widthOf(10)),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Get Started',
                      onPressed: (){
                        Navigator.pushNamed(context, RouteNames.loginScreen);
                      },
                      backgroundColor: Color(0xffED1940),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
