import 'package:flutter/material.dart';
import 'package:hotel_app/config/custom_color.dart';
import 'package:hotel_app/config/size_config.dart';
import 'package:hotel_app/config/text_style.dart';
import 'package:hotel_app/models/hotel_model.dart';
import 'package:hotel_app/ui/widgets/custom_box_shadow.dart';
import 'package:hotel_app/ui/widgets/custom_icons.dart';
import 'package:hotel_app/ui/widgets/custom_label.dart';
import 'package:hotel_app/ui/widgets/new_hotel_card.dart';
import 'package:hotel_app/ui/widgets/recommended_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAppBar(),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
            child: CustomLabel(
              "Recommended Hotels",
              viewAllOnTap: () {},
            ),
          ),
          SizedBox(
            height: 2,
          ),
          SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: recommendHotels
                      .asMap()
                      .map((i, element) => MapEntry(
                          i,
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.defaultMargin,
                                right: (i == recommendHotels.length - 1)
                                    ? SizeConfig.defaultMargin
                                    : 0),
                            child: RecommendedCard(element),
                          )))
                      .values
                      .toList())),
          SizedBox(
            height: 14,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
            child: CustomLabel(
              "New Hotels Experience",
              viewAllOnTap: () {},
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: newHotels.map((e) => Padding(
              padding:  EdgeInsets.only(bottom: 12),
              child: NewHotelCard(e),
            )).toList(),
          ),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }

  Container buildAppBar() {
    return Container(
      width: SizeConfig.screenWidth,
      height: 190,
      child: Stack(
        children: <Widget>[
          Positioned(
            height: 150,
            width: SizeConfig.screenWidth,
            child: Container(
              color: mainColor,
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconButton("icon_drawer"),
                  Text(
                    "Discover",
                    style: whiteTextStyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  iconButtonWithCounter("icon_notification"),
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            width: SizeConfig.screenWidth,
            height: 80,
            child: Container(
              margin:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
              padding: EdgeInsets.symmetric(
                  vertical: 16, horizontal: SizeConfig.defaultMargin),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [customBoxShadow()]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Balance",
                        style: greyTextStyle.copyWith(fontSize: 14),
                      ),
                      Text(
                        "IDR 9.200.301",
                        style: mainColor2TextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  iconButton("icon_add",
                      iconColor: mainColor2,
                      backgroundColor: mainColorBackground,
                      size: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}