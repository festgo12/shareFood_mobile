import 'package:flutter/material.dart';
import 'package:shared_food/ui/size_config/size_config_impl2.dart';
import 'package:country_picker/country_picker.dart';

import '../../../core/route_names.dart';
import '../../../widgets/custom_botton.dart';
import '../../../widgets/custom_textField.dart';

class VerifyMobileScreen extends StatefulWidget {
  const VerifyMobileScreen({Key? key}) : super(key: key);

  @override
  State<VerifyMobileScreen> createState() => _VerifyMobileScreenState();
}

class _VerifyMobileScreenState extends State<VerifyMobileScreen> {
  String _countryCode = "+234";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical:SizeConfig.heightOf(10),horizontal: SizeConfig.widthOf(5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Text('shareFood',style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700
                ),)
            ),
            SizedBox(height: 40,),
            Text('Enter your number',style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 5,),
            Text('We will send a code to verify your mobile number.',style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
            ),),
            SizedBox(height: 20,),
            BoxTextField(

              prefix: InkWell(
                onTap: (){
                  showCountryPicker(context: context,
                      showPhoneCode: true,
                      onSelect: (Country country){
                        setState(() {
                          _countryCode = '+${country.displayName}';
                        });
                      }
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 16, 0, 0),
                  child: Text(_countryCode),
                ),
              ),
              textInputType: TextInputType.phone,
              //controller: phone,
              hint: 'Phone Number',
              //validator: (val) => model.validatePhoneNumber(val),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Next',
                    onPressed: (){
                      Navigator.pushNamed(context, RouteNames.otpScreen);
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
