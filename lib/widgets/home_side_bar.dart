import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSideBar extends StatefulWidget {
  const HomeSideBar({Key? key}) : super(key: key);

  @override
  State<HomeSideBar> createState() => _HomeSideBarState();
}

class _HomeSideBarState extends State<HomeSideBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _profileImageButton(),
        _sideBarItem('Frame', '2k',),
        _sideBarItem('view', '234',),
        _sideBarItem('download', '84',),
        _sideBarItem('smile', '22k',),
        _sideBarItem('com', '150',),
        _sideBarItem('share',''),
      ],
    );
  }

  _sideBarItem(String iconName, String label){
    return Column(
      children: [
        SvgPicture.asset('svgs/$iconName.svg'),
        SizedBox(height: 2,),
        Container(
          width: 50,
          height: 18,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
              child: Text(label,style: TextStyle(
                color: Colors.white
              ),)
          ),
        )
      ],
    );
  }


  _profileImageButton(){
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              image:AssetImage('images/pdp.png'),
              fit: BoxFit.cover
            )
          ),
        )
      ],
    );
  }
}
