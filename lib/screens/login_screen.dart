import 'package:flutter/material.dart';
import 'package:nonton_id/screens/register_screen.dart';
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
        // resizeToAvoidBottomInset: false,
        backgroundColor: AppStyle.appColors.backgroundColor,
        body: SingleChildScrollView(
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
                      obscureText: true,
                    ),
                    AppStyle.appMargin.spaceExtraHeight,
                    Row(
                      children: [
                        Text(
                          'Belum Punya Akun? ',
                          style: TextStyle(color: AppStyle.appColors.tertiary),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const RegisterScreen(),
                              ),
                            );
                          },
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
              SizedBox(height: 80),
            ],
          ),
        ),
        bottomSheet: Container(
          color: AppStyle.appColors.backgroundColor,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
            child: ButtonWidget(
              text: 'Masuk',
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
