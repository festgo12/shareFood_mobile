import 'package:flutter/material.dart';
import 'package:shared_food/ui/size_config/size_config_impl2.dart';
import 'package:shared_food/widgets/slide_item.dart';
import 'dart:async';
import '../../../core/route_names.dart';
import '../../../widgets/slide_dot.dart';
import 'model/slide.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _timer!.cancel();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(SizeConfig.widthOf(10)),
        child: Column(
          children: [
            Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < slideList.length; i++)
                    if (i == _currentPage) SlideDot(true) else SlideDot(false)
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: slideList.length,
                  itemBuilder: (ctx, i) => SlideItem(index: i,)),
            ),
            SizedBox(height: 80,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      _pageController.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouteNames.getStartedScreen);
                  },
                    child: Text('Skip')))
          ],
        ),
      ),
    );
  }
}
