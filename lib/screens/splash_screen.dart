import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nonton_id/components/text_logo_component.dart';
import 'package:nonton_id/router/router.dart';
import 'package:nonton_id/style/app_style.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => context.go(RoutePaths.login),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.appColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/img_splash.png',
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 148,
            child: TextLogoComponent(),
          ),
        ],
      ),
    );
  }
}
