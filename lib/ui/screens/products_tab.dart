import 'package:flutter/material.dart';
import 'package:shared_food/widgets/custom_botton.dart';


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
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
      childAspectRatio: 8.0 / 10.0,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductList(),
          ),
        ],
        );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/egg.png'),
                fit: BoxFit.cover
              )
            ),
            margin: EdgeInsets.only(right: 10),
            width: double.infinity,
            height: 101,
            //color: Colors.cyan,
          ),
        ),
        SizedBox(height: 10,),
        Text('Beans with plantain',style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400
        ),),
        SizedBox(height: 10,),
        Row(
          children: [
            Text('N2,500',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900
            ),),
            Spacer(),
            Row(
              children: const [
                Icon(Icons.remove_circle_outline),
                SizedBox(width: 5,),
                Text('2'),
                SizedBox(width: 5,),
                Icon(Icons.add_circle_outline),
              ],
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Add to Cart',
                textColor: Colors.black,
                onPressed: (){
                  //Navigator.pushNamed(context, RouteNames.verifyMobileScreen);
                },
                backgroundColor: Color(0xffFBD1D9),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
