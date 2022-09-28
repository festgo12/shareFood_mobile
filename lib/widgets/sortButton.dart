import 'package:flutter/material.dart';

class SortButton extends StatefulWidget {
  final String name;
  final int currentIndex, positionIndex;
  final VoidCallback onPressed;
  final double? borderRadius;

  const SortButton({Key? key,
    required this.name,
    this.borderRadius,
    required this.currentIndex,
    required this.positionIndex,
    required this.onPressed,


  }) : super(key: key);

  @override
  State<SortButton> createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Center(child: Text(widget.name,textAlign: TextAlign.center,)),
    //   decoration: BoxDecoration(
    //       color: widget.positionIndex == widget.currentIndex ? Color(0xffFBD1D9) : Colors.white,
    //       borderRadius: BorderRadius.circular(5)
    //   ),
    //   width: double.infinity,
    //   height: 35,
    // );

    return OutlinedButton(
      style: TextButton.styleFrom(
          //minimumSize: const Size(80, 90),
          shape:RoundedRectangleBorder(borderRadius: widget.borderRadius == null ? const BorderRadius.all(Radius.circular(5)) : BorderRadius.all(Radius.circular(widget.borderRadius!)),
    ),
        backgroundColor: widget.positionIndex == widget.currentIndex ? Color(0xffFBD1D9) : Colors.white
      ),
        onPressed: widget.onPressed,
        child: Text(
          widget.name,
          style: TextStyle(
            color: Colors.black
          ),
        )
    );
  }
}
