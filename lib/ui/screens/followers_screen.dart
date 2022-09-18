import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_food/widgets/custom_botton.dart';
import '../../core/route_names.dart';
import '../../widgets/custom_textField.dart';
import '../size_config/size_config_impl2.dart';



class FollowersScreen extends StatelessWidget {
  const FollowersScreen({Key? key}) : super(key: key);

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
        title: BoxTextField(label: 'Followers',
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
                          Text('Sylvester',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400
                          ),),
                          Text('Follows you'),
                        ],
                      ),
                      Spacer(),
                      CustomButton(
                        text: 'Follow Back',
                        textColor: Colors.black,
                        backgroundColor: Color(0xffF4758C),
                        onPressed: (){},
                      )
                    ],
                  ),
                ),
            ],
          ),
        )
    );
  }
}
