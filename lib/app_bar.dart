import 'package:flutter/material.dart';
import 'package:flutter_intern_0603/custom_icons_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/icons/Menu.svg',
            width: 30,
          ),
        ),
        Row(
          children: [
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/forum_black_24dp 1.svg',
                width: 30,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/icons/Notification.svg',
                width: 30,
              ),
            ),
          ],
        )
      ],
    );
  }
}
