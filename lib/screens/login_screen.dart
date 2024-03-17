import 'package:flutter/material.dart';
import 'package:nonton_id/widgets/button_widget.dart';

import '../components/text_logo_component.dart';
import '../style/app_style.dart';
import '../widgets/text_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppStyle.appColors.backgroundColor,
        body: Padding(
          padding: AppStyle.appMargin.paddingScreen20,
          child: Column(
            children: [
              Container(
                height: 270,
                alignment: Alignment.center,
                child: TextLogoComponent(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Masuk",
                      style: AppStyle.appFont.titleMediumStyleWhite,
                    ),
                    AppStyle.appMargin.spaceExtraHeight,
                    TextFieldWidget(
                      controller: TextEditingController(),
                      hintText: 'username',
                      icon: Icons.person_outline_rounded,
                    ),
                    SizedBox(height: 8),
                    TextFieldWidget(
                      controller: TextEditingController(),
                      hintText: 'password',
                      icon: Icons.lock_outline_rounded,
                    ),
                    AppStyle.appMargin.spaceExtraHeight,
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum Punya Akun? ',
                          style: TextStyle(color: AppStyle.appColors.tertiary),
                        ),
                        InkWell(
                          child: Text(
                            'Daftar',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppStyle.appColors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              ButtonWidget(
                text: 'Masuk',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
