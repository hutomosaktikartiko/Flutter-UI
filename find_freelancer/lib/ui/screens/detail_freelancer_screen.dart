import 'package:find_freelancer/config/custom_color.dart';
import 'package:find_freelancer/config/size_config.dart';
import 'package:find_freelancer/config/text_style.dart';
import 'package:flutter/material.dart';

class DetailFreelancerScreen extends StatefulWidget {
  const DetailFreelancerScreen({Key? key}) : super(key: key);

  @override
  _DetailFreelancerScreenState createState() => _DetailFreelancerScreenState();
}

class _DetailFreelancerScreenState extends State<DetailFreelancerScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    tabController = TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor2,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42,
            ),
            buildTop(context),
            buildBottom()
          ],
        ),
      ),
    );
  }

  Container buildTop(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight * 0.23,
      width: SizeConfig.screenWidth,
      child: Stack(
        children: [
          buildBackButton(context),
          buildUserCard(),
          Positioned(
              top: 20,
              left: SizeConfig.screenWidth * 0.27,
              child: Image.asset(
                "assets/images/cover_block.png",
                height: 50,
                width: 48,
              )),
          Positioned(
              right: -30,
              bottom: 5,
              child: Image.asset(
                "assets/images/cover_circle_detail.png",
                height: 119,
                width: 119,
              )),
        ],
      ),
    );
  }

  Container buildBottom() {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultMargin, vertical: 32),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Overview",
            style: blackFontStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "From humble startups to software used by billions, I’ve had a blast designing things that people love. At Google, I'm proudly building the future of Chrome alongside some of the industry's greatest innovators.",
            style: blackFontStyle.copyWith(
                fontSize: 14, color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            "Skills",
            style: blackFontStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "UX Design, UI Design, IoT Design, Micro-interaction Design, 3D Illustration",
            style: blackFontStyle.copyWith(
                fontSize: 14, color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            height: 24,
          ),
          TabBar(
              controller: tabController,
              unselectedLabelColor: mainColor2,
              labelColor: mainColor,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              labelStyle: mainColorFontStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w600),
              indicatorPadding: EdgeInsets.zero,
              indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
              tabs: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                        color: (selectedIndex == 0) ? mainColor2 : Colors.white,
                        border: Border.all(color: mainColor2),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      "Portfolio",
                    )),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                        color: (selectedIndex == 1) ? mainColor2 : Colors.white,
                        border: Border.all(color: mainColor2),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      "Clients",
                    )),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                        color: (selectedIndex == 2) ? mainColor2 : Colors.white,
                        border: Border.all(color: mainColor2),
                        borderRadius: BorderRadius.circular(100)),
                    child: Text(
                      "Review",
                    )),
              ]),
          SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 250,
            child: TabBarView(controller: tabController, children: [
              Image.asset(
                "assets/images/portfolio.png",
                height: 238,
                width: SizeConfig.screenWidth,
                fit: BoxFit.cover,
              ),
              Container(),
              Container()
            ]),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }

  Positioned buildUserCard() {
    return Positioned(
      top: 50,
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig.defaultMargin,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white),
            child: Image.asset(
              "assets/profiles/profile_detail.png",
              height: 130,
              width: 114,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 32,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stephan Lee",
                style: mainColorFontStyle.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "UI / UX Designer",
                style: mainColorFontStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.room_outlined,
                    size: 15,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Jakarta",
                    style: blackFontStyle.copyWith(
                        fontSize: 10, color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
            ],
          ),
          SizedBox(
            width: SizeConfig.defaultMargin,
          ),
        ],
      ),
    );
  }

  Padding buildBackButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: mainColor,
          size: 32,
        ),
      ),
    );
  }
}
