import 'package:flutter/material.dart';
import 'package:hotel_app/config/size_config.dart';
import 'package:hotel_app/config/text_style.dart';
import 'package:hotel_app/models/hotel_model.dart';
import 'package:hotel_app/ui/widgets/custom_rating.dart';

class NewHotelCard extends StatelessWidget {
  const NewHotelCard(
    this.hotel, {
    Key? key,
  }) : super(key: key);

  final HotelModel hotel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/images/${hotel.image}",
                    height: 70,
                    width: 70,
                  )),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${hotel.name}",
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "${hotel.location}",
                    style: blackTextStyle.copyWith(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          CustomRating("${hotel.rating}")
        ],
      ),
    );
  }
}
