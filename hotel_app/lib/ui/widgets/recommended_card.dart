import 'package:flutter/material.dart';
import 'package:hotel_app/config/custom_color.dart';
import 'package:hotel_app/config/text_style.dart';
import 'package:hotel_app/models/hotel_model.dart';
import 'package:hotel_app/ui/widgets/custom_box_shadow.dart';
import 'package:hotel_app/ui/widgets/custom_rating.dart';

class RecommendedCard extends StatelessWidget {
  const RecommendedCard(
    this.hotel, {
    Key? key,
  }) : super(key: key);

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 12, 12, 20),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [customBoxShadow()],
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/${hotel.image}",
                height: 200,
              )),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${hotel.name}",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: orange,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text("${hotel.location}",
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                          )),
                    ],
                  ),
                ],
              ),
              CustomRating(hotel.rating!)
            ],
          ),
          Divider(
            color: grey,
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Price Start from:",
                style: greyTextStyle.copyWith(fontSize: 12),
              ),
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "IDR ${hotel.price}",
                    style: mainColor2TextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w600)),
                TextSpan(
                    text: "/night",
                    style: greyTextStyle.copyWith(
                      fontSize: 10,
                    )),
              ]))
            ],
          )
        ],
      ),
    );
  }
}
