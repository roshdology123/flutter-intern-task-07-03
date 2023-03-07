import 'package:flutter/material.dart';
import 'package:flutter_intern_0603/Widgets/category_tile.dart';
import 'package:flutter_intern_0603/Widgets/program_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color(0xffEEF3FD),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Hello, Priya!',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'What do you wanna learn today?',
                      style: TextStyle(color: Color(0xff6D747A)),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      CategoryTile(
                          title: 'Programs',
                          iconPath: 'assets/icons/Book-mark.svg'),
                      CategoryTile(
                          title: 'Get help',
                          iconPath: 'assets/icons/help-circle.svg'),
                    ],
                  ),
                  Row(
                    children: [
                      CategoryTile(
                          title: 'Learn',
                          iconPath: 'assets/icons/Book-open.svg'),
                      CategoryTile(
                          title: 'DD Tracker',
                          iconPath: 'assets/icons/trello.svg'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 8.0),
                      child: Text(
                        'Programs for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff6D747A), fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ProgramCard(
                          cardTitle: 'LIFESTYLE',
                          cardDescription:
                              'A complete guide for your new born baby',
                          imgPath: 'assets/icons/Frame 122.svg',
                          cardInfo: '16 lessons'),
                      ProgramCard(
                          cardTitle: 'LIFESTYLE',
                          cardDescription:
                              'A complete guide for your new born baby',
                          imgPath: 'assets/icons/Frame 122.svg',
                          cardInfo: '16 lessons'),
                      ProgramCard(
                          cardTitle: 'LIFESTYLE',
                          cardDescription:
                              'A complete guide for your new born baby',
                          imgPath: 'assets/icons/Frame 122.svg',
                          cardInfo: '16 lessons'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 8.0),
                      child: Text(
                        'Events and experiences',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff6D747A), fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ProgramCard(
                        cardTitle: 'BABYCARE',
                        cardDescription: 'Understanding of human behaviour',
                        cardInfo: '13 Feb, Sunday',
                        isButton: true,
                        imgPath: 'assets/icons/Frame 122.svg',
                      ),
                      ProgramCard(
                          cardTitle: 'BABYCARE',
                          cardDescription: 'Understanding of human behaviour',
                          cardInfo: '13 Feb, Sunday',
                          isButton: true,
                          imgPath: 'assets/icons/Frame 122.svg'),
                      ProgramCard(
                          cardTitle: 'BABYCARE',
                          cardDescription: 'Understanding of human behaviour',
                          cardInfo: '13 Feb, Sunday',
                          isButton: true,
                          imgPath: 'assets/icons/Frame 122.svg'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 8.0),
                      child: Text(
                        'Lessons for you',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        child: Row(
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(
                                  color: Color(0xff6D747A), fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            SvgPicture.asset('assets/icons/arrow-right.svg')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ProgramCard(
                        cardTitle: 'BABYCARE',
                        cardDescription: 'Understanding of human behaviour',
                        cardInfo: '3 min',
                        isLock: true,
                        imgPath: 'assets/icons/Frame 122.svg',
                      ),
                      ProgramCard(
                          cardTitle: 'BABYCARE',
                          cardDescription: 'Understanding of human behaviour',
                          cardInfo: '3 min',
                          isLock: true,
                          imgPath: 'assets/icons/Frame 122.svg'),
                      ProgramCard(
                          cardTitle: 'BABYCARE',
                          cardDescription: 'Understanding of human behaviour',
                          cardInfo: '3 min',
                          isLock: true,
                          imgPath: 'assets/icons/Frame 122.svg'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
