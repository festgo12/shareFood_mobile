import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/route_names.dart';
import '../../widgets/custom_botton.dart';
import '../size_config/size_config_impl2.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool status = false;
  bool status1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Check Out',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: SizeConfig.heightOf(2), horizontal: SizeConfig.widthOf(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your order',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '1 Product from Business username',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFDE8EC),
                            image: DecorationImage(
                                image: AssetImage('images/rice.png'),
                                fit: BoxFit.cover)),
                        width: 35,
                        height: 35,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Rice and beans combo',
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w400),
                                  ),
                                  Spacer(),
                                  Text(
                                    'N2,500.00',
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'stay connected on sharefood',
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.w300),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Icon(Icons.remove_circle_outline),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('X2'),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.add_circle_outline),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'svgs/spoon.svg',
                        width: 9.3,
                        height: 15,
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Do you need cutlery?'),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Help us minimize waste, by requesting for cutlery when you need it',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                  Spacer(),
                                  FlutterSwitch(
                                    width: 60.0,
                                    height: 30.0,
                                    valueFontSize: 25.0,
                                    //toggleSize: 45.0,
                                    value: status1,
                                    borderRadius: 30.0,
                                    activeColor: Colors.red,
                                    padding: 5.0,
                                    //showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        status1 = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Text('Delivery details',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800
                  ),),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'svgs/comment.svg',
                        width: 35,
                        height: 35,
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('Allow Comments'),
                                  Spacer(),
                                  FlutterSwitch(
                                    width: 60.0,
                                    height: 30.0,
                                    valueFontSize: 25.0,
                                    //toggleSize: 45.0,
                                    value: status,
                                    borderRadius: 30.0,
                                    activeColor: Colors.red,
                                    padding: 5.0,
                                    //showOnOff: true,
                                    onToggle: (val) {
                                      setState(() {
                                        status = val;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading:SvgPicture.asset('svgs/address.svg') ,
                    title: Text('Add your address',style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  //SizedBox(height: 10,),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading:SvgPicture.asset('svgs/phonebook.svg') ,
                    title: Text('Add your phone no',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(height: 20,),
                  Text('Payment Method',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800
                  ),),
                  SizedBox(height: 20,),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading:SvgPicture.asset('svgs/card.svg') ,
                    title: Text('Add Payment Method',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  //SizedBox(height: 20,),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 8),
                    leading:SvgPicture.asset('svgs/random.svg') ,
                    title: Text('Get Promo code',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                    ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            //SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 221,
              color: Color(0xffFED5DD),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.widthOf(5)),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Summary',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800
                        ),
                      ),
                      SizedBox(height: 20,),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('Products'),
                              Spacer(),
                              Text('NGN 2,500',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('Delivery'),
                              Spacer(),
                              Text('NGN 2,500',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text('Total',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900
                                ),
                              ),
                              Spacer(),
                              Text('NGN 2,500',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900
                                ),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              text: 'Confirm Order',
                              onPressed: (){
                                Navigator.pushNamed(context, RouteNames.verifyMobileScreen);
                              },
                              backgroundColor: Color(0xffED1940),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

