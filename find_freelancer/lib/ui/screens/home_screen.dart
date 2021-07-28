import 'package:find_freelancer/config/custom_color.dart';
import 'package:find_freelancer/config/size_config.dart';
import 'package:find_freelancer/config/text_style.dart';
import 'package:find_freelancer/ui/screens/detail_freelancer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTop(),
            buildBottom(context),
          ],
        ),
      ),
    );
  }

  Stack buildTop() {
    return Stack(children: [
      Positioned(
          top: 230,
          left: -35,
          child: Container(
            height: 173,
            width: 161,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.white.withOpacity(0.1), BlendMode.dstIn),
                    image: AssetImage(
                      "assets/images/cover_circle.png",
                    ))),
          )),
      Positioned(
          top: 20,
          right: -50,
          child: Image.asset(
            "assets/images/cover_user.png",
            height: 450,
            width: 376,
          )),
      Container(
        height: SizeConfig.screenHeight * 0.4,
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42,
            ),
            buildSearchBar(),
            SizedBox(
              height: 46,
            ),
            Text(
              "Cari\nFreelancer",
              style: whiteFontStyle.copyWith(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 36,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Selesaikan pekerjaan\ndengan talenta\nterbaik di bidangnya",
              style: whiteFontStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white.withOpacity(0.5)),
            )
          ],
        ),
      ),
    ]);
  }

  Container buildBottom(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
            child: Text(
              "Paling Banyak Dicari",
              style: blackFontStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: SizeConfig.defaultMargin,
                ),
                buildSlide(
                    image: "slide_1",
                    title: "Programmer",
                    description: "256 Programmer"),
                SizedBox(
                  width: SizeConfig.defaultMargin,
                ),
                buildSlide(
                    image: "slide_2",
                    title: "UI/UX Designer",
                    description: "120 Designer"),
                SizedBox(
                  width: SizeConfig.defaultMargin,
                ),
                buildSlide(
                    image: "slide_3",
                    title: "Sosmed Specialis",
                    description: "67 Sosmed Specialis"),
                SizedBox(
                  width: SizeConfig.defaultMargin,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Freelancer",
                  style: blackFontStyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Lihat Semua",
                  style: mainColorFontStyle.copyWith(
                      fontSize: 12, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          buildUserCard(context,
              image: "profile_top_programmer",
              name: "Andrea Hutama Karya",
              job: "Programmer",
              rating: "4.9",
              location: "Bandung",
              price: "55"),
          SizedBox(
            height: 10,
          ),
          buildUserCard(context,
              image: "profile_top_programmer",
              name: "Andrea Hutama Karya",
              job: "Programmer",
              rating: "4.9",
              location: "Bandung",
              price: "55"),
          SizedBox(
            height: 10,
          ),
          buildUserCard(context,
              image: "profile_top_programmer",
              name: "Andrea Hutama Karya",
              job: "Programmer",
              rating: "4.9",
              location: "Bandung",
              price: "55"),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Padding buildUserCard(BuildContext context,
      {required String image,
      required String name,
      required String job,
      required String rating,
      required String location,
      required String price}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
      child: GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailFreelancerScreen())),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: mainColor2,
                      borderRadius: BorderRadius.circular(16)),
                  child: Image.asset(
                    "assets/profiles/$image.png",
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name",
                    style: blackFontStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "$job",
                    style: blackFontStyle.copyWith(
                        fontSize: 12, color: Colors.black.withOpacity(0.5)),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: starColor,
                            size: 15,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "$rating",
                            style: blackFontStyle.copyWith(
                              fontSize: 10,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.room_outlined,
                            size: 15,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            "$location",
                            style: blackFontStyle.copyWith(
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.5)),
                          ),
                        ],
                      ),
                      Text.rich(TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "\$$price/",
                            style: blackFontStyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "hr",
                            style: greyFontStyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ]))
                    ],
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        padding: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            "HIRE ME",
                            style: whiteFontStyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 90,
                        padding: EdgeInsets.symmetric(vertical: 7),
                        decoration: BoxDecoration(
                          border: Border.all(color: mainColor),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Text(
                            "PROFILE",
                            style: mainColorFontStyle.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SizedBox buildSlide(
      {required String image,
      required String title,
      required String description}) {
    return SizedBox(
      width: 146,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/slides/$image.png", height: 107),
          SizedBox(
            height: 10,
          ),
          Text(
            "$title",
            style: blackFontStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.9)),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "$description",
            style: blackFontStyle.copyWith(
                fontSize: 11,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.5)),
          ),
        ],
      ),
    );
  }

  SizedBox buildSearchBar() {
    return SizedBox(
      height: 42,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white.withOpacity(0.2),
                  filled: true,
                  hintText: "Search Freelancers, Project",
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                  hintStyle: whiteFontStyle.copyWith(
                      color: Colors.white.withOpacity(0.3), fontSize: 14),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white.withOpacity(0.3),
                    size: 25,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none)),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Container(
            height: 42,
            width: 42,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white.withOpacity(0.2)),
            child: Icon(
              Icons.filter_list,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
