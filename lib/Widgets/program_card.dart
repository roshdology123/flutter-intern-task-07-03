import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProgramCard extends StatelessWidget {
  final String cardTitle;
  final String cardDescription;
  final String cardInfo;
  final bool? isButton;
  final String imgPath;
  final bool? isLock;
  const ProgramCard({
    Key? key,
    required this.cardTitle,
    required this.cardDescription,
    required this.cardInfo,
    this.isButton = false,
    this.isLock = false,
    required this.imgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 242,
          height: 280,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), color: Color(0xffFFFFFF)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                imgPath,
                width: 242,
                height: 140,
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cardTitle,
                  style: TextStyle(
                      color: Color(0xff598BED), fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cardDescription,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 30,
                      width: 90,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          cardInfo,
                          style: TextStyle(
                            color: Color(0xff6D747A),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  isButton!
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: InkWell(
                            child: Container(
                              height: 25,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Color(0xff598BED),
                                  )),
                              child: Center(
                                child: Text(
                                  'Book',
                                  style: TextStyle(
                                      color: Color(0xff598BED),
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        )
                      : isLock!
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: InkWell(
                                child: Container(
                                  height: 25,
                                  width: 60,
                                  child: Center(
                                    child: SvgPicture.asset(
                                        'assets/icons/lock.svg'),
                                  ),
                                ),
                              ),
                            )
                          : SizedBox(
                              height: 8,
                            )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
