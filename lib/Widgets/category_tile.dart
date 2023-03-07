import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final String iconPath;
  const CategoryTile({Key? key, required this.title, required this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 48,
          width: 160,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xff598BED)),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(iconPath),
              Text(
                title,
                style: TextStyle(
                    color: Color(0xff598BED), fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
