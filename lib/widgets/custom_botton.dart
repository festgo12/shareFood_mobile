import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color textColor;
  final String text;
  final double? borderRadius;
  final Widget? leading;
  final VoidCallback? onPressed;
  final Color? disabledColor;
  const CustomButton({
    Key? key, this.backgroundColor, this.text = "null", this.leading, this.onPressed, this.textColor=Colors.white, this.borderRadius, this.disabledColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: onPressed == null ? disabledColor??Theme.of(context).primaryColor : backgroundColor?? Color(0xff1D1D59),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius == null ? BorderRadius.all(Radius.circular(4)) : BorderRadius.all(Radius.circular(borderRadius!)),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            leading ?? Container(),
            leading == null ? Container() : SizedBox(width: 20,),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}