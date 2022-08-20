import 'package:flutter/material.dart';
import 'package:shared_food/ui/size_config/size_config_impl2.dart';
import 'package:shared_food/widgets/custom_botton.dart';
import 'package:shared_food/widgets/custom_textField.dart';

import '../../../core/route_names.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:SizeConfig.widthOf(5),vertical: SizeConfig.heightOf(10)),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Login Details',style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 5,),
            Text('Please provide your details to access your account.',style: TextStyle(
                fontSize: 12,
              fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 30,),
            Text('Username',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            BoxTextField(
              hint: 'Eg. John ',
            ),
            SizedBox(height: 40,),
            Text('Phone no',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600
            ),),
            SizedBox(height: 10,),
            BoxTextField(
              hint: 'Eg. 090..... ',
              textInputType: TextInputType.phone,
            ),
            SizedBox(height: 20,),
            Center(
              child: TextButton(
                  onPressed: (){},
                  child: Text('Forgot Username ?')
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Login',
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
    );
  }
}
