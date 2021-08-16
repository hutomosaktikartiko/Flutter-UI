import 'package:chat_app/config/custom_color.dart';
import 'package:chat_app/config/custom_text_style.dart';
import 'package:chat_app/ui/screens/main_screen.dart';
import 'package:chat_app/utils/navigator.dart';
import 'package:chat_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: CustomColor.backgroundColor,
      body: buildBody(context),
    );
  }

  Padding buildBody(context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SizedBox(height: SizeConfig.screenHeight * 0.3,),
          Image.asset("assets/images/illustration_onboarding.png"),
          Text(
            "Instant Messaging, Simple and Personal",
            style: CustomTextStyle.whiteTextStyle
                .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "start your new journey in the Chat Us",
            style: CustomTextStyle.grey1TextStyle.copyWith(fontSize: 14),
          ),
          SizedBox(
            height: 25,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: CustomColor.primaryColor,
              padding: EdgeInsets.symmetric(vertical: 13, horizontal: 36),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ),
              onPressed: () => replaceScreen(context, MainScreen()),
              child: Text(
                "Let's Begin",
                style: CustomTextStyle.whiteTextStyle
                    .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
              )),
        ],
      ),
    );
  }
}
