import 'package:chat_app/config/custom_color.dart';
import 'package:chat_app/ui/pages/call_page.dart';
import 'package:chat_app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> pages = [HomePage(), CallPage()];

  List<BottomNavigationBarItem> bottomNavigatorBarItem = [
    BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 5, top: 10),
          child: ImageIcon(AssetImage("assets/icons/icon_chat.png")),
        ),
        label: "Chats"),
    BottomNavigationBarItem(
        icon: Padding(
          padding: EdgeInsets.only(bottom: 5, top: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ImageIcon(AssetImage("assets/icons/icon_call.png")),
              Positioned(
                left: -3,
                top: 3,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColor.red,
                    border: Border.all(
                      color: CustomColor.backgroundColor2
                    )
                  ),
                ),
              )
            ],
          ),
        ),
        label: "Calls"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: CustomColor.backgroundColor,
      bottomNavigationBar: buildBottomNavigatorBar(),
    );
  }

  BottomNavigationBar buildBottomNavigatorBar() {
    return BottomNavigationBar(
      backgroundColor: CustomColor.backgroundColor2,
      currentIndex: currentIndex,
      onTap: moveTab,
      items: bottomNavigatorBarItem,
      selectedItemColor: CustomColor.primaryColor,
      unselectedItemColor: CustomColor.grey2,
      iconSize: 27,
      unselectedFontSize: 12,
      selectedFontSize: 12,
    );
  }

  void moveTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
