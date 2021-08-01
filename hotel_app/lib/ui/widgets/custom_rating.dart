import 'package:flutter/material.dart';
import 'package:hotel_app/config/custom_color.dart';
import 'package:hotel_app/config/text_style.dart';

class CustomRating extends StatelessWidget {
  const CustomRating(this.rating, {Key? key}) : super(key: key);

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          rating,
          style:
              greyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 2,
        ),
        Icon(
          Icons.star,
          size: 18,
          color: starColor,
        )
      ],
    );
  }
}
