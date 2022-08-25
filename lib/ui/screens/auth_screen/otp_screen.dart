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
