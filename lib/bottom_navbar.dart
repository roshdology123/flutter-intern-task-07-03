import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intern_0603/Widgets/learn_screen.dart';
import 'package:flutter_intern_0603/main_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'custom_icons_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: [
        MainScreen(),
        LearnScreen(),
        Placeholder(),
        Placeholder(),
        Placeholder(),
      ],
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(
            Custom_icons.home,
            size: 20,
          ),
          title: ("Home"),
          activeColorPrimary: Color(0xff598BED),
          inactiveColorPrimary: Color(0xff6D747A),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Custom_icons.book_open,
            size: 20,
          ),
          title: ("Learn"),
          activeColorPrimary: Color(0xff598BED),
          inactiveColorPrimary: Color(0xff6D747A),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Custom_icons.hub,
            size: 20,
          ),
          title: ("Hub"),
          activeColorPrimary: Color(0xff598BED),
          inactiveColorPrimary: Color(0xff6D747A),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Custom_icons.chat,
            size: 20,
          ),
          title: ("Chat"),
          activeColorPrimary: Color(0xff598BED),
          inactiveColorPrimary: Color(0xff6D747A),
        ),
        PersistentBottomNavBarItem(
          icon: Icon(CupertinoIcons.profile_circled),
          title: ("Profile"),
          activeColorPrimary: Color(0xff598BED),
          inactiveColorPrimary: Color(0xff6D747A),
        ),
      ],
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        border: Border(top: BorderSide(color: Colors.black, width: 0.2)),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
