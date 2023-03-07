import 'package:flutter/material.dart';
import 'package:flutter_intern_0603/bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Placeholder(),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
