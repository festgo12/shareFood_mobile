import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_food/ui/screens/post_tab.dart';

import '../../core/route_names.dart';
import '../../widgets/custom_botton.dart';
import '../size_config/size_config_impl2.dart';


class UsersProfile extends StatefulWidget {
  const UsersProfile({Key? key}) : super(key: key);

  @override
  State<UsersProfile> createState() => _UsersProfileState();
}

class _UsersProfileState extends State<UsersProfile> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: selectedIndex,
      length: 4,
      vsync: this,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: SvgPicture.asset('svgs/person.svg'),
            onPressed: () {Navigator.of(context).pop();
            }
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Chef chi', style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),
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
      body: ListView(
        //shrinkWrap: true,
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
          Center(
            child: Text('@gloria',style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400
            ),),
          ),
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
          Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Bio descrption of business and \n personal or both.',textAlign: TextAlign.center,),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical:SizeConfig.heightOf(3),horizontal:SizeConfig.widthOf(5) ),
            child: TabBar(
                controller: tabController,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                    tabController.animateTo(index);
                  });
                },
                labelColor: Colors.black,
                indicatorColor: Colors.grey,
                tabs:const [
                  Tab(icon: ImageIcon(AssetImage('images/postIcon.png')),text:"Post"),
                  Tab(icon: ImageIcon(AssetImage('images/react.png')),text: "Reacts"),
                  Tab(icon: ImageIcon(AssetImage('images/saved.png')),text: "Saved"),
                  Tab(icon: ImageIcon(AssetImage('images/draft.png')),text: "Drafts"),
                ]),
          ),
          IndexedStack(
              index: selectedIndex,
              children: const [
                PostTabScreen(),
                Center(child: Text('Reacts')),
                Center(child: Text('saved')),
                Center(child: Text('Drafts'))
              ]),
        ],
      ),
    );
  }
}
