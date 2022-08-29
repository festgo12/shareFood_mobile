import 'package:flutter/material.dart';
import 'package:shared_food/ui/screens/cart_screen.dart';
import 'package:shared_food/ui/screens/home_screen.dart';
import 'package:shared_food/ui/screens/profile_screen.dart';
import 'package:shared_food/ui/screens/search_screen.dart';
import 'package:shared_food/ui/screens/uploadVideo_screen.dart';
import 'package:shared_food/widgets/custom_bottom_navbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;

  final List _pages = [
        HomeScreen(),
        SearchScreen(),
        UploadVideoScreen(),
        ProfileScreen(),
        CartScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_selectedPageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        onTap: (index)=> setState(()=>_selectedPageIndex=index),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('svgs/home.svg'),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('images/Search.png')),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  shape: BoxShape.circle
                ),
                width: 40,
                height: 40,
                child: Center(
                  child: IconButton(icon: Icon(Icons.add,size: 15,),
                    onPressed: (){},
                    color: Colors.black,),
                ),
              ),
              label: 'Upload'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('svgs/profile.svg'),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('svgs/cart.svg'),
              label: 'Cart'
          ),
        ],
      ),
    );
  }
}
