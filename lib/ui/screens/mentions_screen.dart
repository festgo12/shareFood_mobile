import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/route_names.dart';
import '../../widgets/custom_textField.dart';


class MentionsScreen extends StatelessWidget {
  const MentionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: BoxTextField(label: 'Mentions',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 316,
              height: 143,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mentions.png')
                ),
              ),
            ),
            Text('No Mentions Yet',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
            ),
            SizedBox(height: 5,),
            Text('When someone mentions on your posts,\n you’ll see it here',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
