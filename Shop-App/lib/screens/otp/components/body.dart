import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constans.dart';
import 'package:shop_app/screens/otp/components/otp_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            Text(
              "OTP Verification",
              style: headingStyle,
            ),
            Text("We sent your code to +1 898 860 ***"),
            SizedBox(
              height: SizeConfig.screenHeight * 0.15,
            ),
            buildTimer(),
            SizedBox(
              height: SizeConfig.screenHeight * 0.1,
            ),
            OtpForm(),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Resend OTP Code",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            )
          ],
        )),
      ),
    );
  }

  Row buildTimer() {
    return Row(children: [
      Text("This code will expired in"),
      TweenAnimationBuilder(
        tween: Tween(begin: 30.0, end: 0),
        duration: Duration(seconds: 30),
        builder: (context, value, child) =>
            Text("00:${value.toInt()}", style: TextStyle(color: kPrimaryColor)),
        onEnd: () {},
      )
    ]);
  }
}
