import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/route_names.dart';
import '../../widgets/custom_textField.dart';
import '../size_config/size_config_impl2.dart';


class MealiScreen extends StatelessWidget {
  const MealiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int chats = 10;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: BoxTextField(label: 'Meali',
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('svgs/settings.svg'),
            onPressed: () {
              // do something
              Navigator.pushNamed(context, RouteNames.settingsScreen);
            },
          )
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(3),horizontal: SizeConfig.widthOf(5)),
        child: ListView(
          children: [
            for (int i = 0; i < chats; i++)
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    width: 90,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/meali.png'),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text('Jollof Rice And Eggs:\n Some Nutrients Contained \n Like Protein...',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('45k Commented',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('Last viewed. 5m',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
