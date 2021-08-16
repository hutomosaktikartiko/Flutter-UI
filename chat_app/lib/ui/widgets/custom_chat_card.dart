import 'package:chat_app/config/custom_text_style.dart';
import 'package:chat_app/models/chat_model.dart';
import 'package:chat_app/ui/widgets/custom_photo_card.dart';
import 'package:flutter/material.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({
    required this.chat,
    Key? key,
  }) : super(key: key);

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomPhotoCard(
              photoUrl: chat.photoUrl!,
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.name!,
                  style: CustomTextStyle.whiteTextStyle
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                Text(
                  chat.lastChat!,
                  style: CustomTextStyle.grey3TextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          chat.time!,
          style: CustomTextStyle.grey3TextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
