import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/custom_listTile.dart';
import '../size_config/size_config_impl2.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Settings',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(3),horizontal: SizeConfig.widthOf(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Account'),
            SizedBox(height: 10,),
            Expanded(
              child: ListView(
                children:  [
                  CustomListTile(
                    leading: SvgPicture.asset(
                      'svgs/person1.svg',
                      width: 40,
                      height: 40,

                    ),
                    title: 'Manage Account',
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/lock.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Privacy',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/security.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Security and Login',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/creator.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Creator tools',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/shareIcon.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Share profile',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/help.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Help center',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/copy.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Copyright Policy',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/switch.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Switch account',
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,)
                  ),
                  CustomListTile(
                      leading: SvgPicture.asset(
                        'svgs/logout.svg',
                        width: 40,
                        height: 40,
                      ),
                      title: 'Log Out',
                      trailing: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/profilepic.png')
                          ),
                          color: Colors.redAccent,
                          shape: BoxShape.circle
                        ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


