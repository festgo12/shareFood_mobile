import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../../core/route_names.dart';
import '../../../widgets/custom_botton.dart';
import '../../size_config/size_config_impl2.dart';


class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      //border: Border.all(color:Colors.black),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  //   border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  //   borderRadius: BorderRadius.circular(8),
  // );

  // final submittedPinTheme = defaultPinTheme.copyWith(
  //   decoration: defaultPinTheme.decoration.copyWith(
  //     color: Color.fromRGBO(234, 239, 243, 1),
  //   ),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(5),horizontal: SizeConfig.widthOf(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios)
            ),
            SizedBox(height: 20,),
            Text('Enter Code',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 5,),
            Text('Please Fill in the code Sent to +234890876544',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 40),
            Pinput(
              //defaultPinTheme: defaultPinTheme,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //focusedPinTheme: focusedPinTheme,
              //submittedPinTheme: submittedPinTheme,
              // validator: (s) {
              //   return s == '2222' ? null : 'Pin is incorrect';
              // },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print(pin),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Next',
                    onPressed: (){
                      Navigator.pushNamed(context, RouteNames.navigationContainer);
                    },
                    backgroundColor: Color(0xffED1940),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
