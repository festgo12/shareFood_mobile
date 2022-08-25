import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedPageIndex;
  final Function onIconTap;
  const CustomBottomNavBar({Key? key, required this.selectedPageIndex, required this.onIconTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final barHeight = MediaQuery.of(context).size.height *0.06;
    return BottomAppBar(
      color: selectedPageIndex == 0 ? Colors.white : Colors.black,
      child: Container(
        height:  barHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _bottomBarNavItem(0,'Home', TextStyle(), 'home'),
            _bottomBarNavItem(1,'Search', TextStyle(), 'search'),
            _bottomBarNavItem(2,'Profile', TextStyle(), 'profile'),
            _bottomBarNavItem(3,'Cart', TextStyle(), 'cart')
          ],
        ),
      ),
    );
  }

  _bottomBarNavItem(
      int index,
      String label,
      TextStyle textStyle,
      String iconNAme,
      ){
    bool isSelected = selectedPageIndex == index;
    Color iconAndTextColor = isSelected ? Colors.black : Colors.grey;

    if(isSelected && selectedPageIndex == 0){
      iconAndTextColor = Colors.red;
    }

    return GestureDetector(
      onTap: ()=> {
        onIconTap
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('svgs/${isSelected ? iconNAme : iconNAme}.svg',color: iconAndTextColor,),
          SizedBox(height: 3,),
          Text(
            label,
          )
        ],
      ),
    );
  }
}
