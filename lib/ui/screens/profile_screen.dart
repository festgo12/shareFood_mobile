import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_food/ui/size_config/size_config_impl2.dart';

import '../../widgets/custom_botton.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: SvgPicture.asset('svgs/person.svg'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text('Gloria', style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
            ),),
            actions: [
              IconButton(
                icon: SvgPicture.asset('svgs/settings.svg'),
                onPressed: () {
                  // do something
                },
              )
            ],
          ),
          body: Column(
            children: [
              Center(
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/profilepic.png'),
                          fit: BoxFit.cover
                      ),
                      shape: BoxShape.circle,
                      color: Colors.redAccent
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('@gloria',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
              ),),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:SizeConfig.widthOf(10),vertical:SizeConfig.heightOf(3) ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        Text('67',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 5,),
                        Text('Following'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('67',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: 5,),
                        Text('Followers'),
                      ],
                    ),
                    Column(
                      children: const [
                        Text('6k',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text('Reactions'),
                      ],
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'Edit Profile',
                    textColor: Colors.black,
                    onPressed: (){
                      //Navigator.pushNamed(context, RouteNames.verifyMobileScreen);
                    },
                    backgroundColor: Color(0xffFBD1D9),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xffED1940),
                        shape: BoxShape.circle
                    ),
                    width: 25,
                    height: 25,
                    child: Icon(Icons.add,color: Colors.white,),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical:SizeConfig.heightOf(3),horizontal:SizeConfig.widthOf(5) ),
                child: TabBar(
                  labelColor: Colors.black,
                    indicatorColor: Colors.grey,
                    tabs:[
                  Tab(icon: ImageIcon(AssetImage('images/postIcon.png')),text:"Post"),
                  Tab(icon: ImageIcon(AssetImage('images/react.png')),text: "React"),
                  Tab(icon: ImageIcon(AssetImage('images/saved.png')),text: "Saved"),
                  Tab(icon: ImageIcon(AssetImage('images/draft.png')),text: "Drafts"),
                ]),
              )
            ],
          ),
        )
    );
  }
}
