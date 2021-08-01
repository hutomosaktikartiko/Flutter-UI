import 'package:flutter/material.dart';
import 'package:hotel_app/config/custom_color.dart';
import 'package:hotel_app/config/size_config.dart';
import 'package:hotel_app/config/text_style.dart';
import 'package:hotel_app/models/hotel_model.dart';
import 'package:hotel_app/models/search_model.dart';
import 'package:hotel_app/ui/widgets/custom_label.dart';
import 'package:hotel_app/ui/widgets/nearby_hotel_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Locations",
              style: grey2TextStyle.copyWith(fontSize: 12),
            ),
            Text.rich(TextSpan(children: <TextSpan>[
              TextSpan(
                text: "Bandung,",
                style: blackTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: " Indonesia",
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
            ])),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: SizeConfig.defaultMargin),
                  hintText: "Find your favorite Hotels",
                  hintStyle: grey2TextStyle.copyWith(fontSize: 14),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: grey2,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: grey2))),
            ),
            Divider(
              color: grey2,
              height: 50,
            ),
            CustomLabel("Lastest Search"),
            SizedBox(
              height: 12,
            ),
            Wrap(
                spacing: 12,
                runSpacing: 12,
                children: searchs.map((e) => buildSearchCard(e)).toList()),
            SizedBox(
              height: 24,
            ),
            CustomLabel("Nearby You"),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: nearbyHotels
                  .map((e) => Padding(
                        padding: EdgeInsets.only(bottom: 12),
                        child: NearbyHotelCard(e),
                      ))
                  .toList(),
            ),
            SizedBox(
              height: 14,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Load More",
                  style: mainColor2TextStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell buildSearchCard(String label) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 22),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: grey2)),
        child: Text(
          label,
          style: blackTextStyle.copyWith(fontSize: 14),
        ),
      ),
    );
  }
}
