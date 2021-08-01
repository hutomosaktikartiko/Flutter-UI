import 'package:flutter/material.dart';
import 'package:hotel_app/ui/pages/home_page.dart';
import 'package:hotel_app/ui/pages/order_page.dart';
import 'package:hotel_app/ui/pages/profile_page.dart';
import 'package:hotel_app/ui/pages/search_page.dart';

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
        icon: Image.asset("assets/icons/icon_home.png"), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Order"),
    BottomNavigationBarItem(
        icon: Image.asset("assets/icons/icon_profile.png"), label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
