import 'package:chat_app/config/custom_color.dart';
import 'package:chat_app/config/custom_text_style.dart';
import 'package:chat_app/models/chat_model.dart';
import 'package:chat_app/ui/widgets/custom_chat_card.dart';
import 'package:chat_app/ui/widgets/custom_photo_card.dart';
import 'package:chat_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPhotoCard(
                    photoUrl: "my_profile.png",
                  ),
                  ImageIcon(
                    AssetImage("assets/icons/icon_menu.png"),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Online",
                    style: CustomTextStyle.whiteTextStyle
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                    decoration: BoxDecoration(
                        color: CustomColor.backgroundColor2,
                        borderRadius: BorderRadius.circular(2)),
                    child: Text(
                      "4",
                      style: CustomTextStyle.whiteTextStyle
                          .copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 66,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.defaultMargin),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CustomPhotoCard(
                            photoUrl: "my_profile.png",
                            height: 50,
                            width: 50,
                          ),
                          Positioned(
                              bottom: -9,
                              left: 0,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: CustomColor.blue,
                                    border: Border.all(
                                        color: CustomColor.backgroundColor2)),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ))
                        ],
                      ),
                    ),
                    Row(
                        children: listChats
                            .asMap()
                            .map((key, value) => MapEntry(
                                key,
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20,
                                      right: (key == listChats.length - 1)
                                          ? SizeConfig.defaultMargin
                                          : 0),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      (value.isStatusExits!)
                                          ? Container(
                                            decoration: BoxDecoration(
                                              border: Border.all(color: CustomColor.blue, width: 3),
                                             borderRadius: BorderRadius.circular(100) 
                                            ),
                                            child: CustomPhotoCard(
                                              height: 44,
                                              width: 44,
                                                photoUrl: value.photoUrl!),
                                          )
                                          : CustomPhotoCard(
                                              photoUrl: value.photoUrl!,
                                              height: 50,
                                              width: 50,
                                            ),
                                      (value.isOnline!)
                                          ? Positioned(
                                              bottom: 3,
                                              right: -1,
                                              child: Container(
                                                height: 12,
                                                width: 12,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: CustomColor.green,
                                                    border: Border.all(
                                                        color: CustomColor
                                                            .backgroundColor2)),
                                              ),
                                            )
                                          : SizedBox.shrink()
                                    ],
                                  ),
                                )))
                            .values
                            .toList()),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Messages",
                    style: CustomTextStyle.whiteTextStyle
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.search,
                    color: CustomColor.grey1,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: listChats
                    .asMap()
                    .map((key, value) => MapEntry(
                        key,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomChatCard(
                              chat: value,
                            ),
                            (key == listChats.length - 1)
                                ? SizedBox(
                                    height: 20,
                                  )
                                : Divider(
                                    color: CustomColor.backgroundColor2,
                                    thickness: 1,
                                    height: 45,
                                  ),
                          ],
                        )))
                    .values
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
