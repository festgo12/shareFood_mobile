import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/route_names.dart';
import '../../widgets/custom_textField.dart';
import '../size_config/size_config_impl2.dart';

class NiceScreen extends StatelessWidget {
  const NiceScreen({Key? key}) : super(key: key);

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
        title: BoxTextField(label:'Nice',
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
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/timothy.png')
                        ),
                        //color: Colors.redAccent,
                        shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Charles27',style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                      ),),
                      Text('Says nice to your post. 5m'),
                    ],
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/put.png'),
                          fit: BoxFit.cover
                      ),
                    ),
                    width: 30,
                    height: 40,
                    //color: Colors.redAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
