import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_food/widgets/custom_textField.dart';

import '../../core/route_names.dart';
import '../../widgets/custom_botton.dart';
import '../size_config/size_config_impl2.dart';

class ForBetterSearchScreen extends StatefulWidget {
  const ForBetterSearchScreen({Key? key}) : super(key: key);

  @override
  State<ForBetterSearchScreen> createState() => _ForBetterSearchScreenState();
}

class _ForBetterSearchScreenState extends State<ForBetterSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('For Better Search',
        style: TextStyle(
          color: Colors.black
        ),),
        actions: [
          Row(
            children: [
              IconButton(
                icon: SvgPicture.asset('svgs/info.svg'),
                onPressed: () {
                  // do something
                },
              ),
              //SizedBox(width: 5,),
              IconButton(
                icon: SvgPicture.asset('svgs/settings.svg'),
                onPressed: () {
                  // do something
                },
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(8),horizontal: SizeConfig.widthOf(5)),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 144,
                height: 152,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/capture.png')
                  )
                ),
              ),
            ),
            SizedBox(height: 40,),
            BoxTextField(
              label: '#Food Name',
            ),
            SizedBox(height: 15,),
            BoxTextField(
              label: 'Add food comment/question',
            ),
            SizedBox(height: 15,),
            BoxTextField(
              label: 'Add food health info',
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Done',
                    onPressed: (){
                      Navigator.pushNamed(context, RouteNames.verifyMobileScreen);
                    },
                    backgroundColor: Color(0xffED1940),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
