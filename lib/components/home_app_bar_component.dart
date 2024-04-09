import 'package:flutter/material.dart';
import 'package:nonton_id/style/app_style.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/foto.png',
              height: 30,
              width: 30,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
            ),
            SizedBox(width: 4),
            Text(
              'Jakarta',
              style: AppStyle.appFont.titleSmallStyleWhite,
            )
          ],
        ),
        Icon(
          Icons.notifications_none_outlined,
          size: 28,
        )
      ],
    );
  }
}
