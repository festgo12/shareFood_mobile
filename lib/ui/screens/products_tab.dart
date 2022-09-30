import 'package:flutter/material.dart';


class ProductTabScreen extends StatefulWidget {
  const ProductTabScreen({Key? key}) : super(key: key);

  @override
  State<ProductTabScreen> createState() => _ProductTabScreenState();
}

class _ProductTabScreenState extends State<ProductTabScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4.0),
      childAspectRatio: 8.0 / 5.0,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: double.infinity,
            height: 101,
            color: Colors.cyan,
          ),
          Container(
            width: double.infinity,
            height: 101,
            color: Colors.yellow,
          ),
        ],
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        );
  }
}
