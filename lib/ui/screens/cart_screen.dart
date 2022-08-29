import 'package:flutter/material.dart';
import 'package:shared_food/widgets/custom_botton.dart';
import '../size_config/size_config_impl2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Cart',style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(15),horizontal: SizeConfig.widthOf(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFDE8EC),
                    image: DecorationImage(
                      image:AssetImage('images/Location.png'),
                      fit: BoxFit.cover
                    )
                  ),
                  width:54,
                  height: 54,
                ),
                SizedBox(width: 10,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Add address',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),
                    ),
                    Text('Tap here to add address',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                  ],
                )
              ],
            ),
            SizedBox(height: 40,),
            Text('Mr Biggs',style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300
            ),),
            SizedBox(height: 10,),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFDE8EC),
                      image: DecorationImage(
                          image:AssetImage('images/Location.png'),
                          fit: BoxFit.cover
                      )
                  ),
                  width:75,
                  height: 71,
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('Rice and beans combo',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Text('N2,500.00',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('X2 = N5,000.00',style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                        ),),
                       SizedBox(width: 120,),
                       //Spacer(),
                        Row(
                          children: [
                            Icon(Icons.remove_circle_outline),
                            SizedBox(width: 5,),
                            Text('2'),
                            SizedBox(width: 5,),
                            Icon(Icons.add_circle_outline),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  text: 'Save',
                  onPressed: (){},
                  backgroundColor: Color(0xffFBD1D9),
                ),
                SizedBox(width: 10,),
                CustomButton(
                  text: 'Remove',
                  onPressed: (){},
                  backgroundColor: Color(0xffFBD1D9),
                ),
                SizedBox(width: 10,),
                CustomButton(
                  text: 'Checkout',
                  onPressed: (){
                    print('null');
                  },
                  backgroundColor: Color(0xffFBD1D9),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
