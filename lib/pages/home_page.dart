import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nonton_id/router/router.dart';
import 'package:nonton_id/style/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppStyle.appColors.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Home Page',
              style: AppStyle.appFont.bodyMediumStyleWhite,
            ),
            InkWell(
              onTap: () => context.go('${RoutePaths.home}${RoutePaths.movie}'),
              child: Text('to Movie List'),
            ),
            InkWell(
              onTap: () => context.go(
                  '${RoutePaths.home}${RoutePaths.movieDetail.replaceFirst(':id', 'starwars')}'),
              child: Text('to Movie Detail'),
            )
          ],
        ),
      ),
    );
  }
}
