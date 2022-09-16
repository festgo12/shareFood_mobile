import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core/route_names.dart';
import '../../widgets/custom_botton.dart';
import '../size_config/size_config_impl2.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {

  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Confirm Order',
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
                                children: const [
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
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    'stay connected on sharefood',
                                    style: TextStyle(
                                        fontSize: 12, fontWeight: FontWeight.w300),
                                  ),
                                  Spacer(),
                                  Row(
                                    children: const [
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
                  SizedBox(height: 40,),
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
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 221,
              color: Color(0xffFED5DD),
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.widthOf(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Receipt',
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
                            Text('ORDER ID:',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900
                              ),
                            ),
                            Spacer(),
                            Text('09878',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.all(SizeConfig.widthOf(5)),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Track Delivery',
                      onPressed: (){
                        Navigator.pushNamed(context, RouteNames.confirmOrderScreen);
                      },
                      backgroundColor: Color(0xffED1940),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
