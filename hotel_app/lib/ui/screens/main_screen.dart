import 'package:flutter/material.dart';
import 'package:hotel_app/config/custom_color.dart';
import 'package:hotel_app/config/text_style.dart';
import 'package:hotel_app/ui/pages/home_page.dart';
import 'package:hotel_app/ui/pages/order_page.dart';
import 'package:hotel_app/ui/pages/profile_page.dart';
import 'package:hotel_app/ui/pages/search_page.dart';
import 'package:hotel_app/ui/widgets/custom_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTab = 0;
  List<Widget> pages = [HomePage(), SearchPage(), OrderPage(), ProfilePage()];

  List<BottomNavigationBarItem> bottomNavigatorBarItem = [
    BottomNavigationBarItem(
        icon: iconNotification("icon_homes"), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search,), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Order"),
    BottomNavigationBarItem(
        icon: iconNotification("icon_profile"), label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentTab],
      backgroundColor: backgroundColor,
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: currentTab,
      onTap: moveTab,
      items: bottomNavigatorBarItem,
      selectedItemColor: mainColor,
      elevation: 0,
      selectedLabelStyle: mainColor2TextStyle.copyWith(
          color: mainColor,fontWeight: FontWeight.w400),
      unselectedLabelStyle: grey2TextStyle.copyWith(
          color: Colors.grey, fontWeight: FontWeight.w400),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      iconSize: 27,
      unselectedItemColor: grey2,
      unselectedFontSize: 14,
      backgroundColor: Colors.white,
      selectedFontSize: 14,
    );
  }

  void moveTab(int index) {
    setState(() {
      currentTab = index;
    });
  }
}
