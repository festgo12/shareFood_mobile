import 'package:flutter/material.dart';

import '../../../core/route_names.dart';
import '../../../widgets/custom_listTile.dart';
import '../../../widgets/custom_textField.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../size_config/size_config_impl2.dart';


class AllActivityScreen extends StatelessWidget {
  const AllActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: BoxTextField(label: 'All activity',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New'),
            SizedBox(height: 10,),
            Row(
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
                    Text('Charles27, Timothy, and 5 others',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),),
                    Text('comment on this post.. 5m'),
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
                )
              ],
            ),
            SizedBox(height: 40,),
            Text('Others'),
            Expanded(
              child: ListView(
                children:  [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.niceScreen);
                    },
                    child: CustomListTile(
                        leading: SvgPicture.asset(
                          'svgs/nice.svg',
                          width: 40,
                          height: 40,
                        ),
                        title: 'Nice',
                        trailing: Stack(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              //color: Colors.yellow,
                            ),
                            SvgPicture.asset(
                              'svgs/noti.svg',
                              width: 20,
                              height: 20,
                            ),
                            Positioned(
                              left: 5,
                              child: Container(
                                width: 20,
                                height: 20,
                                //color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 1.0, top: 3),
                                  child: Text('3',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8
                                  ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.yummyScreen);
                    },
                    child: CustomListTile(
                        leading: SvgPicture.asset(
                          'svgs/yummy.svg',
                          width: 40,
                          height: 40,
                        ),
                        title: 'Yummy',
                      trailing: Stack(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            //color: Colors.yellow,
                          ),
                          SvgPicture.asset(
                            'svgs/noti.svg',
                            width: 20,
                            height: 20,
                          ),
                          Positioned(
                            left: 5,
                            child: Container(
                              width: 20,
                              height: 20,
                              //color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1.0, top: 3),
                                child: Text('3',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/comments.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Comments',
                    trailing: Stack(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          //color: Colors.yellow,
                        ),
                        SvgPicture.asset(
                          'svgs/noti.svg',
                          width: 20,
                          height: 20,
                        ),
                        Positioned(
                          left: 5,
                          child: Container(
                            width: 20,
                            height: 20,
                            //color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1.0, top: 3),
                              child: Text('3',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.mentionsScreen);
                    },
                    child: CustomListTile(
                        leading: SvgPicture.asset(
                          'svgs/mentions.svg',
                          width: 40,
                          height: 40,
                        ),
                        title: 'Mentions',
                      trailing: Stack(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            //color: Colors.yellow,
                          ),
                          SvgPicture.asset(
                            'svgs/noti.svg',
                            width: 20,
                            height: 20,
                          ),
                          Positioned(
                            left: 5,
                            child: Container(
                              width: 20,
                              height: 20,
                              //color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1.0, top: 3),
                                child: Text('3',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.followersScreen);
                    },
                    child: CustomListTile(
                        leading: SvgPicture.asset(
                          'svgs/followers.svg',
                          width: 40,
                          height: 40,
                        ),
                        title: 'Followers',
                      trailing: Stack(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            //color: Colors.yellow,
                          ),
                          SvgPicture.asset(
                            'svgs/noti.svg',
                            width: 20,
                            height: 20,
                          ),
                          Positioned(
                            left: 5,
                            child: Container(
                              width: 20,
                              height: 20,
                              //color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1.0, top: 3),
                                child: Text('3',style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/downloads.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Downloads',
                    trailing: Stack(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          //color: Colors.yellow,
                        ),
                        SvgPicture.asset(
                          'svgs/noti.svg',
                          width: 20,
                          height: 20,
                        ),
                        Positioned(
                          left: 5,
                          child: Container(
                            width: 20,
                            height: 20,
                            //color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1.0, top: 3),
                              child: Text('3',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/requests.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Requests',
                    trailing: Stack(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          //color: Colors.yellow,
                        ),
                        SvgPicture.asset(
                          'svgs/noti.svg',
                          width: 20,
                          height: 20,
                        ),
                        Positioned(
                          left: 5,
                          child: Container(
                            width: 20,
                            height: 20,
                            //color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1.0, top: 3),
                              child: Text('3',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8
                              ),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, RouteNames.mealiScreen);
                    },
                    child: CustomListTile(
                        leading: SvgPicture.asset(
                          'svgs/meali.svg',
                          width: 40,
                          height: 40,
                        ),
                        title: 'Meali',
                      trailing: Stack(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            //color: Colors.yellow,
                          ),
                          SvgPicture.asset(
                            'svgs/noti.svg',
                            width: 20,
                            height: 20,
                          ),
                          Positioned(
                            left: 5,
                            child: Container(
                              width: 20,
                              height: 20,
                              //color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 1.0, top: 3),
                                child: Text('3',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/sounds.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Sounds',
                      // trailing: Container(
                      //   width: 40,
                      //   height: 40,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           image: AssetImage('images/profilepic.png')
                      //       ),
                      //       color: Colors.redAccent,
                      //       shape: BoxShape.circle
                      //   ),
                      // )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
