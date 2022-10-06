import 'package:flutter/material.dart';
import 'package:shared_food/widgets/video_details.dart';
import '../../core/route_names.dart';
import '../../widgets/home_side_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
     appBar: AppBar(
       automaticallyImplyLeading: false,
       elevation: 0,
       backgroundColor: Colors.transparent,
       title: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: const [
           Text('My Following'),
           SizedBox(width: 10,),
           Text('|'),
           SizedBox(width: 10,),
           Text('Trending')
         ],
       ),
       actions: [
         IconButton(
           icon: SvgPicture.asset('svgs/notif.svg'),
           onPressed: () {
             // do something
             Navigator.pushNamed(context, RouteNames.allActivityScreen);
           },
         )
       ],
     ),
      body: PageView.builder(
        onPageChanged: (int page) => {},
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (ctx, index){
          return Stack(
            children: [
              PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (ctx,i){
                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(color: Colors.black ,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                height: MediaQuery.of(context).size.height /4,
                                //color: Colors.cyan,
                                child: VideoDetail(),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: MediaQuery.of(context).size.height / 1.75,
                                //color: Colors.blue,
                                child: HomeSideBar(),
                              ),
                            )
                          ],
                        )
                      ],
                    );
                  }
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //     child: Container(
              //       margin: EdgeInsets.only(bottom: 150),
              //       width: 30,height: 40, color: Colors.red,))
            ],

          );
        }
      ),
    );
  }
}