import 'package:flutter/material.dart';
import 'package:muze/screens/bottomTabs/home/pages/home_screen.dart';
import 'package:muze/screens/bottomTabs/home/pages/no_ui_screen.dart';
import 'package:muze/utils/colors.dart';
import 'package:muze/utils/muze_icons_icons.dart';
import 'package:muze/utils/sizes.dart';
import 'package:muze/utils/text_style.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final _tabs = [
    HomeScreen(),
    NoUIScreen(
      emoji: "😕",
    ),
    NoUIScreen(
      emoji: "😞",
    ),
    NoUIScreen(
      emoji: "😒",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: UIColors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: UISize.width(8)),
                child: Icon(
                  MuzeIcons.home,
                  size: 15,
                ),
              ),
              title: Text(
                "Home",
                style: StyleText.mediumMontserrat
                    .copyWith(fontSize: UISize.fontSize(9)),
              )),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: UISize.width(8)),
                child: Icon(MuzeIcons.discover),
              ),
              title: Text(
                "Discover",
                style: StyleText.mediumMontserrat
                    .copyWith(fontSize: UISize.fontSize(9)),
              )),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: UISize.width(8)),
                child: Icon(
                  MuzeIcons.mylist,
                  size: 15,
                ),
              ),
              title: Text(
                "My List",
                style: StyleText.mediumMontserrat
                    .copyWith(fontSize: UISize.fontSize(9)),
              )),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: UISize.width(8)),
                child: Icon(
                  MuzeIcons.user,
                  size: 15,
                ),
              ),
              title: Text(
                "My Profile",
                style: StyleText.mediumMontserrat
                    .copyWith(fontSize: UISize.fontSize(9)),
              )),
        ],
        selectedLabelStyle: StyleText.mediumMontserrat.copyWith(
          fontSize: UISize.fontSize(12),
        ),
        unselectedLabelStyle: StyleText.mediumMontserrat.copyWith(
          fontSize: UISize.fontSize(12),
        ),
        selectedIconTheme: IconThemeData(size: UISize.width(20)),
        unselectedIconTheme: IconThemeData(size: UISize.width(20)),
        currentIndex: _selectedIndex,
        unselectedItemColor: UIColors.mediumGrey,
        fixedColor: UIColors.primaryColor,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
