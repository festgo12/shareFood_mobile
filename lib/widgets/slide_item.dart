import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_food/ui/size_config/size_config_impl2.dart';
import '../ui/screens/onboarding_screens/model/slide.dart';

class SlideItem extends StatefulWidget {
  final int index;
  const SlideItem({Key? key, required this.index}) : super(key: key);

  @override
  State<SlideItem> createState() => _SlideItemState();
}

class _SlideItemState extends State<SlideItem> {
  @override
  Widget build(BuildContext context) {
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
        _pageController.animateToPage(_currentPage,
            duration: Duration(milliseconds: 300), curve: Curves.easeIn);
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
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xffF6E8EC),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              //height: 511,
              //width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(slideList[widget.index].imageUrl,),
                  //SizedBox(height:30,),
                  Padding(
                    padding:  EdgeInsets.all(SizeConfig.widthOf(4)),
                    child: Text(slideList[widget.index].description,
                    style: TextStyle(
                      fontSize: 22
                    ),
                    textAlign: TextAlign.center,),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

