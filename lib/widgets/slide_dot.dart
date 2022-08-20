import 'package:flutter/material.dart';

class SlideDot extends StatelessWidget {
  bool isActive;
  SlideDot(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal:10),
      height:isActive ? 12 : 8 ,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffED1940) : Color(0xffFBD1D9),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}