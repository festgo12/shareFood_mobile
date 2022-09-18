import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final Widget? leading;
  final String? title;
  final Widget? trailing;
  final Function? onPressed;

  const CustomListTile({
    Key? key, this.leading, this.title, this.trailing, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: leading,
        title: Text(title!),
        trailing: trailing
    );
  }
}